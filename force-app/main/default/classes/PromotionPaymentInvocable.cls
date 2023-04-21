public with sharing class PromotionPaymentInvocable {

    @InvocableMethod(Label='Promotion Payment' Category='Payment' Description='Calls Promotion Payment in Donor Payment Service.')
    public static List<PromotionPaymentResponse> invoke(List<PromotionPaymentRequest> promotionPaymentRequests) {
        List<PromotionPaymentResponse> promotionPaymentResponses = new List<PromotionPaymentResponse>();

        for (PromotionPaymentRequest promotionPaymentRequest : promotionPaymentRequests) {
            DonorPaymentService.createPromotionPayment(promotionPaymentRequest.donorId, promotionPaymentRequest.visitId, promotionPaymentRequest.amount);

            PromotionPaymentResponse promotionPaymentResponse = new PromotionPaymentResponse();
            promotionPaymentResponse.donorId = promotionPaymentRequest.donorId;
            promotionPaymentResponse.visitId = promotionPaymentRequest.visitId;
            promotionPaymentResponse.amount = promotionPaymentRequest.amount;
            promotionPaymentResponses.add(promotionPaymentResponse);
        }

        return promotionPaymentResponses;
    }

    public class PromotionPaymentRequest {

        @InvocableVariable
        public Id donorId;

        @InvocableVariable
        public Id visitId;

        @InvocableVariable
        public Decimal amount;

    }

    public class PromotionPaymentResponse {

        @InvocableVariable
        public Id donorId;

        @InvocableVariable
        public Id visitId;

        @InvocableVariable
        public Decimal amount;

    }

}