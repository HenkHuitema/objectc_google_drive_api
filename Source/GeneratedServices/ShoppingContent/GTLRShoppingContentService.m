// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Content API for Shopping (content/v2.1)
// Description:
//   Manages product items, inventory, and Merchant Center accounts for Google
//   Shopping.
// Documentation:
//   https://developers.google.com/shopping-content

#import "GTLRShoppingContent.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeShoppingContent = @"https://www.googleapis.com/auth/content";

// ----------------------------------------------------------------------------
//   GTLRShoppingContentService
//

@implementation GTLRShoppingContentService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://www.googleapis.com/";
    self.servicePath = @"content/v2.1/";
    self.batchPath = @"batch/content/v2.1";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

+ (NSDictionary<NSString *, Class> *)kindStringToClassMap {
  return @{
    @"content#account" : [GTLRShoppingContent_Account class],
    @"content#accountsAuthInfoResponse" : [GTLRShoppingContent_AccountsAuthInfoResponse class],
    @"content#accountsClaimWebsiteResponse" : [GTLRShoppingContent_AccountsClaimWebsiteResponse class],
    @"content#accountsCustomBatchResponse" : [GTLRShoppingContent_AccountsCustomBatchResponse class],
    @"content#accountsCustomBatchResponseEntry" : [GTLRShoppingContent_AccountsCustomBatchResponseEntry class],
    @"content#accountsLinkResponse" : [GTLRShoppingContent_AccountsLinkResponse class],
    @"content#accountsListLinksResponse" : [GTLRShoppingContent_AccountsListLinksResponse class],
    @"content#accountsListResponse" : [GTLRShoppingContent_AccountsListResponse class],
    @"content#accountStatus" : [GTLRShoppingContent_AccountStatus class],
    @"content#accountstatusesCustomBatchResponse" : [GTLRShoppingContent_AccountstatusesCustomBatchResponse class],
    @"content#accountstatusesListResponse" : [GTLRShoppingContent_AccountstatusesListResponse class],
    @"content#accountsUpdateLabelsResponse" : [GTLRShoppingContent_AccountsUpdateLabelsResponse class],
    @"content#accountTax" : [GTLRShoppingContent_AccountTax class],
    @"content#accounttaxCustomBatchResponse" : [GTLRShoppingContent_AccounttaxCustomBatchResponse class],
    @"content#accounttaxCustomBatchResponseEntry" : [GTLRShoppingContent_AccounttaxCustomBatchResponseEntry class],
    @"content#accounttaxListResponse" : [GTLRShoppingContent_AccounttaxListResponse class],
    @"content#datafeed" : [GTLRShoppingContent_Datafeed class],
    @"content#datafeedsCustomBatchResponse" : [GTLRShoppingContent_DatafeedsCustomBatchResponse class],
    @"content#datafeedsFetchNowResponse" : [GTLRShoppingContent_DatafeedsFetchNowResponse class],
    @"content#datafeedsListResponse" : [GTLRShoppingContent_DatafeedsListResponse class],
    @"content#datafeedStatus" : [GTLRShoppingContent_DatafeedStatus class],
    @"content#datafeedstatusesCustomBatchResponse" : [GTLRShoppingContent_DatafeedstatusesCustomBatchResponse class],
    @"content#datafeedstatusesListResponse" : [GTLRShoppingContent_DatafeedstatusesListResponse class],
    @"content#liaSettings" : [GTLRShoppingContent_LiaSettings class],
    @"content#liasettingsCustomBatchResponse" : [GTLRShoppingContent_LiasettingsCustomBatchResponse class],
    @"content#liasettingsCustomBatchResponseEntry" : [GTLRShoppingContent_LiasettingsCustomBatchResponseEntry class],
    @"content#liasettingsGetAccessibleGmbAccountsResponse" : [GTLRShoppingContent_LiasettingsGetAccessibleGmbAccountsResponse class],
    @"content#liasettingsListPosDataProvidersResponse" : [GTLRShoppingContent_LiasettingsListPosDataProvidersResponse class],
    @"content#liasettingsListResponse" : [GTLRShoppingContent_LiasettingsListResponse class],
    @"content#liasettingsRequestGmbAccessResponse" : [GTLRShoppingContent_LiasettingsRequestGmbAccessResponse class],
    @"content#liasettingsRequestInventoryVerificationResponse" : [GTLRShoppingContent_LiasettingsRequestInventoryVerificationResponse class],
    @"content#liasettingsSetInventoryVerificationContactResponse" : [GTLRShoppingContent_LiasettingsSetInventoryVerificationContactResponse class],
    @"content#liasettingsSetPosDataProviderResponse" : [GTLRShoppingContent_LiasettingsSetPosDataProviderResponse class],
    @"content#localInventory" : [GTLRShoppingContent_LocalInventory class],
    @"content#localinventoryCustomBatchResponse" : [GTLRShoppingContent_LocalinventoryCustomBatchResponse class],
    @"content#localinventoryCustomBatchResponseEntry" : [GTLRShoppingContent_LocalinventoryCustomBatchResponseEntry class],
    @"content#order" : [GTLRShoppingContent_Order class],
    @"content#orderinvoicesCreateChargeInvoiceResponse" : [GTLRShoppingContent_OrderinvoicesCreateChargeInvoiceResponse class],
    @"content#orderinvoicesCreateRefundInvoiceResponse" : [GTLRShoppingContent_OrderinvoicesCreateRefundInvoiceResponse class],
    @"content#orderreportsListDisbursementsResponse" : [GTLRShoppingContent_OrderreportsListDisbursementsResponse class],
    @"content#orderreportsListTransactionsResponse" : [GTLRShoppingContent_OrderreportsListTransactionsResponse class],
    @"content#orderreturnsAcknowledgeResponse" : [GTLRShoppingContent_OrderreturnsAcknowledgeResponse class],
    @"content#orderreturnsListResponse" : [GTLRShoppingContent_OrderreturnsListResponse class],
    @"content#orderreturnsProcessResponse" : [GTLRShoppingContent_OrderreturnsProcessResponse class],
    @"content#ordersAcknowledgeResponse" : [GTLRShoppingContent_OrdersAcknowledgeResponse class],
    @"content#ordersAdvanceTestOrderResponse" : [GTLRShoppingContent_OrdersAdvanceTestOrderResponse class],
    @"content#ordersCancelLineItemResponse" : [GTLRShoppingContent_OrdersCancelLineItemResponse class],
    @"content#ordersCancelResponse" : [GTLRShoppingContent_OrdersCancelResponse class],
    @"content#ordersCancelTestOrderByCustomerResponse" : [GTLRShoppingContent_OrdersCancelTestOrderByCustomerResponse class],
    @"content#ordersCreateTestOrderResponse" : [GTLRShoppingContent_OrdersCreateTestOrderResponse class],
    @"content#ordersCreateTestReturnResponse" : [GTLRShoppingContent_OrdersCreateTestReturnResponse class],
    @"content#ordersGetByMerchantOrderIdResponse" : [GTLRShoppingContent_OrdersGetByMerchantOrderIdResponse class],
    @"content#ordersGetTestOrderTemplateResponse" : [GTLRShoppingContent_OrdersGetTestOrderTemplateResponse class],
    @"content#ordersInStoreRefundLineItemResponse" : [GTLRShoppingContent_OrdersInStoreRefundLineItemResponse class],
    @"content#ordersListResponse" : [GTLRShoppingContent_OrdersListResponse class],
    @"content#ordersRefundItemResponse" : [GTLRShoppingContent_OrdersRefundItemResponse class],
    @"content#ordersRefundOrderResponse" : [GTLRShoppingContent_OrdersRefundOrderResponse class],
    @"content#ordersRejectReturnLineItemResponse" : [GTLRShoppingContent_OrdersRejectReturnLineItemResponse class],
    @"content#ordersReturnRefundLineItemResponse" : [GTLRShoppingContent_OrdersReturnRefundLineItemResponse class],
    @"content#ordersSetLineItemMetadataResponse" : [GTLRShoppingContent_OrdersSetLineItemMetadataResponse class],
    @"content#ordersShipLineItemsResponse" : [GTLRShoppingContent_OrdersShipLineItemsResponse class],
    @"content#ordersUpdateLineItemShippingDetailsResponse" : [GTLRShoppingContent_OrdersUpdateLineItemShippingDetailsResponse class],
    @"content#ordersUpdateMerchantOrderIdResponse" : [GTLRShoppingContent_OrdersUpdateMerchantOrderIdResponse class],
    @"content#ordersUpdateShipmentResponse" : [GTLRShoppingContent_OrdersUpdateShipmentResponse class],
    @"content#posCustomBatchResponse" : [GTLRShoppingContent_PosCustomBatchResponse class],
    @"content#posCustomBatchResponseEntry" : [GTLRShoppingContent_PosCustomBatchResponseEntry class],
    @"content#posInventory" : [GTLRShoppingContent_PosInventory class],
    @"content#posInventoryResponse" : [GTLRShoppingContent_PosInventoryResponse class],
    @"content#posListResponse" : [GTLRShoppingContent_PosListResponse class],
    @"content#posSale" : [GTLRShoppingContent_PosSale class],
    @"content#posSaleResponse" : [GTLRShoppingContent_PosSaleResponse class],
    @"content#posStore" : [GTLRShoppingContent_PosStore class],
    @"content#product" : [GTLRShoppingContent_Product class],
    @"content#productsCustomBatchResponse" : [GTLRShoppingContent_ProductsCustomBatchResponse class],
    @"content#productsCustomBatchResponseEntry" : [GTLRShoppingContent_ProductsCustomBatchResponseEntry class],
    @"content#productsListResponse" : [GTLRShoppingContent_ProductsListResponse class],
    @"content#productStatus" : [GTLRShoppingContent_ProductStatus class],
    @"content#productstatusesCustomBatchResponse" : [GTLRShoppingContent_ProductstatusesCustomBatchResponse class],
    @"content#productstatusesCustomBatchResponseEntry" : [GTLRShoppingContent_ProductstatusesCustomBatchResponseEntry class],
    @"content#productstatusesListResponse" : [GTLRShoppingContent_ProductstatusesListResponse class],
    @"content#pubsubNotificationSettings" : [GTLRShoppingContent_PubsubNotificationSettings class],
    @"content#regionalInventory" : [GTLRShoppingContent_RegionalInventory class],
    @"content#regionalinventoryCustomBatchResponse" : [GTLRShoppingContent_RegionalinventoryCustomBatchResponse class],
    @"content#regionalinventoryCustomBatchResponseEntry" : [GTLRShoppingContent_RegionalinventoryCustomBatchResponseEntry class],
    @"content#returnAddress" : [GTLRShoppingContent_ReturnAddress class],
    @"content#returnaddressCustomBatchResponse" : [GTLRShoppingContent_ReturnaddressCustomBatchResponse class],
    @"content#returnaddressCustomBatchResponseEntry" : [GTLRShoppingContent_ReturnaddressCustomBatchResponseEntry class],
    @"content#returnaddressListResponse" : [GTLRShoppingContent_ReturnaddressListResponse class],
    @"content#returnPolicy" : [GTLRShoppingContent_ReturnPolicy class],
    @"content#returnpolicyCustomBatchResponse" : [GTLRShoppingContent_ReturnpolicyCustomBatchResponse class],
    @"content#returnpolicyCustomBatchResponseEntry" : [GTLRShoppingContent_ReturnpolicyCustomBatchResponseEntry class],
    @"content#returnpolicyListResponse" : [GTLRShoppingContent_ReturnpolicyListResponse class],
    @"content#settlementReport" : [GTLRShoppingContent_SettlementReport class],
    @"content#settlementreportsListResponse" : [GTLRShoppingContent_SettlementreportsListResponse class],
    @"content#settlementTransaction" : [GTLRShoppingContent_SettlementTransaction class],
    @"content#settlementtransactionsListResponse" : [GTLRShoppingContent_SettlementtransactionsListResponse class],
    @"content#shippingsettingsCustomBatchResponse" : [GTLRShoppingContent_ShippingsettingsCustomBatchResponse class],
    @"content#shippingsettingsCustomBatchResponseEntry" : [GTLRShoppingContent_ShippingsettingsCustomBatchResponseEntry class],
    @"content#shippingsettingsGetSupportedCarriersResponse" : [GTLRShoppingContent_ShippingsettingsGetSupportedCarriersResponse class],
    @"content#shippingsettingsGetSupportedHolidaysResponse" : [GTLRShoppingContent_ShippingsettingsGetSupportedHolidaysResponse class],
    @"content#shippingsettingsGetSupportedPickupServicesResponse" : [GTLRShoppingContent_ShippingsettingsGetSupportedPickupServicesResponse class],
    @"content#shippingsettingsListResponse" : [GTLRShoppingContent_ShippingsettingsListResponse class],
    @"content#testOrder" : [GTLRShoppingContent_TestOrder class],
  };
}

@end
