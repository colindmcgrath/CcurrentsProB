import { LightningElement, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import { loadScript } from 'lightning/platformResourceLoader';

import userCurrency from '@salesforce/i18n/currency';

import chartJs from '@salesforce/resourceUrl/ChartJS_4_2_1';
import chartJsDatalabels from '@salesforce/resourceUrl/ChartJS_Datalabels_2_2';
import labels from 'c/labelService';

import userId from '@salesforce/user/Id';
import userSmallPhotoUrl from '@salesforce/schema/User.SmallPhotoUrl';

import getLoyaltyLevelDisplayInfo from '@salesforce/apex/LoyaltyLevelService.getLoyaltyLevelDisplayInfo';
import getDonorRewardsInfo from '@salesforce/apex/DonorSelector.getDonorRewardsInfo';

const LEVEL_NAME_TO_BACKGROUND_STYLE = new Map([
    ["Normal Donor", "rgba(152, 50, 133, 0.2)"],
    ["Signature", "rgba(212, 195, 179, 0.6)"],
    ["VIP", "#E3E3F1"],
    ["Royal", "rgba(219, 202, 160, 0.57)"]
]);

export default class LoyaltyTiers extends LightningElement {
    labels = labels;

    userCurrency = userCurrency;

    photoUrl;
    loyaltyLevels;
    rewardsInfo;
    areLevelsInitialized = false;
    isChartJsInitialized;

    get getRemainingVisitsForNextTierText() {
        let remainingVisitsForNextTier = this.rewardsInfo?.remainingVisitsForNextTier || "0";
        let nextLoyaltyTier = this.rewardsInfo?.nextLoyaltyLevel || "N/A";

        return labels.formatLabel(
            labels.visitsRemainingForTier, 
            [
                `<strong>${remainingVisitsForNextTier}</strong>`,
                `<strong><span style="color: #A18B76;">${nextLoyaltyTier}</span></strong>`
            ]
        );
    }

    @wire(getRecord, { recordId: userId, fields: [userSmallPhotoUrl]}) 
    userDetails({error, data}) {
        if (data) {
            this.photoUrl = data.fields.SmallPhotoUrl.value;
        }
    }

    async connectedCallback() {
        try {
            [this.loyaltyLevels, this.rewardsInfo] = await Promise.all([getLoyaltyLevelDisplayInfo(), getDonorRewardsInfo()]);
            for (let loyaltyLevel of this.loyaltyLevels) {
                loyaltyLevel.iconBackgroundStyle = `background: ${LEVEL_NAME_TO_BACKGROUND_STYLE.get(loyaltyLevel.levelName)};`;
            }

            this.areLevelsInitialized = true;
        } catch(e) {
            console.error(e);
        }
    }

    renderedCallback() {
        if (!this.isChartJsInitialized && this.areLevelsInitialized) {
            this.initLoyaltyTierChart();
        }
    }

    async initLoyaltyTierChart() {
        await loadScript(this, chartJs);
        await loadScript(this, chartJsDatalabels);

        new Chart(this.template.querySelector("canvas[data-loyalty-tier-chart]"), {
            plugins: [ChartDataLabels],
            type: 'bar',
            data: {
                labels: [labels.myDonations, ...this.loyaltyLevels.map((level) => level.levelName)],
                datasets: [{
                    label: '# of Donations',
                    data: [this.rewardsInfo.donorVisitCount, ...this.loyaltyLevels.map((level) => level.levelThreshold)], // Need to fetch these from the backend
                    borderWidth: 0,
                    minBarLength: 5,
                    backgroundColor: ["#88D3FF", ...this.loyaltyLevels.map((level) => { return LEVEL_NAME_TO_BACKGROUND_STYLE.get(level.levelName); })],
                    datalabels: {
                        anchor: "end",
                        align: "end"
                    }
                }]
            },
            options: {
                indexAxis: "y",
                scales: {
                    x: {
                        display: false,
                        max: Math.max(...this.loyaltyLevels.map((level) => level.levelThreshold)) + 10
                    },
                    y: {
                        grid: {
                            display: false
                        },
                        border: {
                            display: false
                        }
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    datalabels: {
                      labels: {
                        title: {
                          font: {
                            weight: 'bold'
                          }
                        }
                      }
                    }
                  }
            }
        });

        this.isChartJsInitialized = true;
    }
}