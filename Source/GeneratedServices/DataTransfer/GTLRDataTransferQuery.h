// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Admin Data Transfer API (admin/datatransfer_v1)
// Description:
//   Transfers user data from one user to another.
// Documentation:
//   https://developers.google.com/admin-sdk/data-transfer/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRDataTransfer_DataTransfer;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other DataTransfer query classes.
 */
@interface GTLRDataTransferQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Retrieves information about an application for the given application ID.
 *
 *  Method: datatransfer.applications.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDataTransferDatatransfer
 *    @c kGTLRAuthScopeDataTransferDatatransferReadonly
 */
@interface GTLRDataTransferQuery_ApplicationsGet : GTLRDataTransferQuery
// Previous library name was
//   +[GTLQueryDataTransfer queryForApplicationsGetWithapplicationId:]

/** ID of the application resource to be retrieved. */
@property(nonatomic, assign) long long applicationId;

/**
 *  Fetches a @c GTLRDataTransfer_Application.
 *
 *  Retrieves information about an application for the given application ID.
 *
 *  @param applicationId ID of the application resource to be retrieved.
 *
 *  @return GTLRDataTransferQuery_ApplicationsGet
 */
+ (instancetype)queryWithApplicationId:(long long)applicationId;

@end

/**
 *  Lists the applications available for data transfer for a customer.
 *
 *  Method: datatransfer.applications.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDataTransferDatatransfer
 *    @c kGTLRAuthScopeDataTransferDatatransferReadonly
 */
@interface GTLRDataTransferQuery_ApplicationsList : GTLRDataTransferQuery
// Previous library name was
//   +[GTLQueryDataTransfer queryForApplicationsList]

/** Immutable ID of the G Suite account. */
@property(nonatomic, copy, nullable) NSString *customerId;

/**
 *  Maximum number of results to return. Default is 100.
 *
 *  @note The documented range is 1..500.
 */
@property(nonatomic, assign) NSInteger maxResults;

/** Token to specify next page in the list. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRDataTransfer_ApplicationsListResponse.
 *
 *  Lists the applications available for data transfer for a customer.
 *
 *  @return GTLRDataTransferQuery_ApplicationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Retrieves a data transfer request by its resource ID.
 *
 *  Method: datatransfer.transfers.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDataTransferDatatransfer
 *    @c kGTLRAuthScopeDataTransferDatatransferReadonly
 */
@interface GTLRDataTransferQuery_TransfersGet : GTLRDataTransferQuery
// Previous library name was
//   +[GTLQueryDataTransfer queryForTransfersGetWithdataTransferId:]

/**
 *  ID of the resource to be retrieved. This is returned in the response from
 *  the insert method.
 */
@property(nonatomic, copy, nullable) NSString *dataTransferId;

/**
 *  Fetches a @c GTLRDataTransfer_DataTransfer.
 *
 *  Retrieves a data transfer request by its resource ID.
 *
 *  @param dataTransferId ID of the resource to be retrieved. This is returned
 *    in the response from the insert method.
 *
 *  @return GTLRDataTransferQuery_TransfersGet
 */
+ (instancetype)queryWithDataTransferId:(NSString *)dataTransferId;

@end

/**
 *  Inserts a data transfer request.
 *
 *  Method: datatransfer.transfers.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDataTransferDatatransfer
 */
@interface GTLRDataTransferQuery_TransfersInsert : GTLRDataTransferQuery
// Previous library name was
//   +[GTLQueryDataTransfer queryForTransfersInsertWithObject:]

/**
 *  Fetches a @c GTLRDataTransfer_DataTransfer.
 *
 *  Inserts a data transfer request.
 *
 *  @param object The @c GTLRDataTransfer_DataTransfer to include in the query.
 *
 *  @return GTLRDataTransferQuery_TransfersInsert
 */
+ (instancetype)queryWithObject:(GTLRDataTransfer_DataTransfer *)object;

@end

/**
 *  Lists the transfers for a customer by source user, destination user, or
 *  status.
 *
 *  Method: datatransfer.transfers.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeDataTransferDatatransfer
 *    @c kGTLRAuthScopeDataTransferDatatransferReadonly
 */
@interface GTLRDataTransferQuery_TransfersList : GTLRDataTransferQuery
// Previous library name was
//   +[GTLQueryDataTransfer queryForTransfersList]

/** Immutable ID of the G Suite account. */
@property(nonatomic, copy, nullable) NSString *customerId;

/**
 *  Maximum number of results to return. Default is 100.
 *
 *  @note The documented range is 1..500.
 */
@property(nonatomic, assign) NSInteger maxResults;

/** Destination user's profile ID. */
@property(nonatomic, copy, nullable) NSString *newOwnerUserId NS_RETURNS_NOT_RETAINED;

/** Source user's profile ID. */
@property(nonatomic, copy, nullable) NSString *oldOwnerUserId;

/** Token to specify the next page in the list. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** Status of the transfer. */
@property(nonatomic, copy, nullable) NSString *status;

/**
 *  Fetches a @c GTLRDataTransfer_DataTransfersListResponse.
 *
 *  Lists the transfers for a customer by source user, destination user, or
 *  status.
 *
 *  @return GTLRDataTransferQuery_TransfersList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop