//Generated by wsdl2apex

public class OnbeRequestPrepaid {

    // Constant
    private static final String uriAccountManagementPrepaidRequest = 'http://request.accountmanagementapi.prepaid.citi.com';
      
    public class UpdateRegistrationRequest {
        public String accessLevel;
        public Boolean accountPersonalized;
        public String newPartnerUserID;
        public OnbeDomainPrepaid.Registration registation;
        private String[] accessLevel_type_info = new String[]{'accessLevel',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] accountPersonalized_type_info = new String[]{'accountPersonalized',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] newPartnerUserID_type_info = new String[]{'newPartnerUserID',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] registation_type_info = new String[]{'registation',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'accessLevel','accountPersonalized','newPartnerUserID','registation'};
    }

    public class activationStatusInquiryRequest {
        public String card_number;
        public String cvv;
        public String postal_code;
        public String validate_postal;
        private String[] card_number_type_info = new String[]{'card_number',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] cvv_type_info = new String[]{'cvv',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] postal_code_type_info = new String[]{'postal_code',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] validate_postal_type_info = new String[]{'validate_postal',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'card_number','cvv','postal_code','validate_postal'};
    }

    public class UpdateAccountStatusRequest {
        public String accountStatus;
        private String[] accountStatus_type_info = new String[]{'accountStatus',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'accountStatus'};
    }

    public class CardInquiryRequest {
        public String program_id;
        public String partner_user_id;
        public String accountNumber;
        private String[] program_id_type_info = new String[]{'program_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] partner_user_id_type_info = new String[]{'partner_user_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] accountNumber_type_info = new String[]{'accountNumber',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'program_id','partner_user_id','accountNumber'};
    }

    public class ServiceRequestAccountNumber {
        public String accountNumber;
        private String[] accountNumber_type_info = new String[]{'accountNumber',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'accountNumber'};
    }

    public class LinkCardRequest {
        public OnbeDomainPrepaid.Link link;
        private String[] link_type_info = new String[]{'link',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'link'};
    }

    public class CreateBulkOrderRequest {
        public String location_code;
        public Integer package_count;
        public String package_type;
        public OnbeDomainPrepaid.Address address;
        private String[] location_code_type_info = new String[]{'location_code',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] package_count_type_info = new String[]{'package_count',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] package_type_type_info = new String[]{'package_type',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] address_type_info = new String[]{'address',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'location_code','package_count','package_type','address'};
    }

    public class ActivateCardRequest {
        public String card_number;
        public String cvv;
        public String postal_code;
        public String accountNumber;
        private String[] card_number_type_info = new String[]{'card_number',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] cvv_type_info = new String[]{'cvv',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] postal_code_type_info = new String[]{'postal_code',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] accountNumber_type_info = new String[]{'accountNumber',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'card_number','cvv','postal_code','accountNumber'};
    }

    public class CreatePackageRequest {
        public String accessLevel;
        public String package_type;
        public String express_mail;
        public OnbeDomainPrepaid.Registration registration_Primary;
        public OnbeDomainPrepaid.Registration registration_Secondary;
        private String[] accessLevel_type_info = new String[]{'accessLevel',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] package_type_type_info = new String[]{'package_type',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] express_mail_type_info = new String[]{'express_mail',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] registration_Primary_type_info = new String[]{'registration_Primary',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] registration_Secondary_type_info = new String[]{'registration_Secondary',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'accessLevel','package_type','express_mail','registration_Primary','registration_Secondary'};
    }

    public class ServiceRequest {
        public OnbeWsPrepaid.ArrayOf_tns2_keyValue keyValue;
        public String partner_user_id;
        public String program_id;
        public String promotion_id;
        public String transaction_id;
        private String[] keyValue_type_info = new String[]{'keyValue',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] partner_user_id_type_info = new String[]{'partner_user_id',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] program_id_type_info = new String[]{'program_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] promotion_id_type_info = new String[]{'promotion_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] transaction_id_type_info = new String[]{'transaction_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'keyValue','partner_user_id','program_id','promotion_id','transaction_id'};
    }

    public class withdrawRequest {
        public String withdraw_type;
        public Long amount;
        public String partner_withdraw_id;
        public String express_flag;
        public String comment;
        public OnbeDomainPrepaid.WithdrawACH ach;
        public OnbeDomainPrepaid.VoidACH achvoid;
        public OnbeDomainPrepaid.WithdrawCheck check;
        public OnbeDomainPrepaid.VoidCheck checkvoid;
        private String[] withdraw_type_type_info = new String[]{'withdraw_type',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] amount_type_info = new String[]{'amount',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] partner_withdraw_id_type_info = new String[]{'partner_withdraw_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] express_flag_type_info = new String[]{'express_flag',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] comment_type_info = new String[]{'comment',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] ach_type_info = new String[]{'ach',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] achvoid_type_info = new String[]{'achvoid',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] check_type_info = new String[]{'check',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] checkvoid_type_info = new String[]{'checkvoid',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'withdraw_type','amount','partner_withdraw_id','express_flag','comment','ach','achvoid','check','checkvoid'};
    }

    public class CreateAccountRequest {
        public String accessLevel;
        public Boolean accountPersonalized;
        public OnbeDomainPrepaid.Card card;
        public OnbeDomainPrepaid.Load load;
        public OnbeDomainPrepaid.Link link;
        public OnbeDomainPrepaid.Registration registation;
        private String[] accessLevel_type_info = new String[]{'accessLevel',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] accountPersonalized_type_info = new String[]{'accountPersonalized',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] card_type_info = new String[]{'card',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] load_type_info = new String[]{'load',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] link_type_info = new String[]{'link',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] registation_type_info = new String[]{'registation',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'accessLevel','accountPersonalized','card','load','link','registation'};
    }

    public class CvvInquiryRequest {
        public String program_id;
        public String partner_user_id;
        public String accountNumber;
        private String[] program_id_type_info = new String[]{'program_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] partner_user_id_type_info = new String[]{'partner_user_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] accountNumber_type_info = new String[]{'accountNumber',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'program_id','partner_user_id','accountNumber'};
    }

    public class AddFundsRequest {
        public OnbeDomainPrepaid.Load load;
        private String[] load_type_info = new String[]{'load',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'load'};
    }

    public class SetPinRequest {
        public String new_pin;
        private String[] new_pin_type_info = new String[]{'new_pin',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'new_pin'};
    }
    
    public class AssignPackageRequest {
        public String package_type;
        public String package_id;
        public OnbeDomainPrepaid.Registration registration_Primary;
        public OnbeDomainPrepaid.Registration registration_Secondary;
        private String[] package_type_type_info = new String[]{'package_type',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] package_id_type_info = new String[]{'package_id',uriAccountManagementPrepaidRequest,null,'1','1','false'};
        private String[] registration_Primary_type_info = new String[]{'registration_Primary',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] registration_Secondary_type_info = new String[]{'registration_Secondary',uriAccountManagementPrepaidRequest,null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{uriAccountManagementPrepaidRequest,'true','false'};
        private String[] field_order_type_info = new String[]{'package_type','package_id','registration_Primary','registration_Secondary'};
    }
}