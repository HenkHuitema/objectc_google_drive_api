// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Filestore API (file/v1)
// Description:
//   The Cloud Filestore API is used for creating and managing cloud file
//   servers.
// Documentation:
//   https://cloud.google.com/filestore/

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

@class GTLRCloudFilestore_CancelOperationRequest;
@class GTLRCloudFilestore_Instance;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Cloud Filestore query classes.
 */
@interface GTLRCloudFilestoreQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets information about a location.
 *
 *  Method: file.projects.locations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsGet : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsGetWithname:]

/** Resource name for the location. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFilestore_Location.
 *
 *  Gets information about a location.
 *
 *  @param name Resource name for the location.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Creates an instance.
 *
 *  Method: file.projects.locations.instances.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsInstancesCreate : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsInstancesCreateWithObject:parent:]

/**
 *  Required. The name of the instance to create. The name must be unique for
 *  the specified project and location.
 */
@property(nonatomic, copy, nullable) NSString *instanceId;

/**
 *  Required. The instance's project and location, in the format
 *  projects/{project_id}/locations/{location}. In Cloud Filestore, locations
 *  map to GCP zones, for example **us-west1-b**.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRCloudFilestore_Operation.
 *
 *  Creates an instance.
 *
 *  @param object The @c GTLRCloudFilestore_Instance to include in the query.
 *  @param parent Required. The instance's project and location, in the format
 *    projects/{project_id}/locations/{location}. In Cloud Filestore, locations
 *    map to GCP zones, for example **us-west1-b**.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsInstancesCreate
 */
+ (instancetype)queryWithObject:(GTLRCloudFilestore_Instance *)object
                         parent:(NSString *)parent;

@end

/**
 *  Deletes an instance.
 *
 *  Method: file.projects.locations.instances.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsInstancesDelete : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsInstancesDeleteWithname:]

/**
 *  Required. The instance resource name, in the format
 *  projects/{project_id}/locations/{location}/instances/{instance_id}
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFilestore_Operation.
 *
 *  Deletes an instance.
 *
 *  @param name Required. The instance resource name, in the format
 *    projects/{project_id}/locations/{location}/instances/{instance_id}
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsInstancesDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the details of a specific instance.
 *
 *  Method: file.projects.locations.instances.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsInstancesGet : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsInstancesGetWithname:]

/**
 *  Required. The instance resource name, in the format
 *  projects/{project_id}/locations/{location}/instances/{instance_id}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFilestore_Instance.
 *
 *  Gets the details of a specific instance.
 *
 *  @param name Required. The instance resource name, in the format
 *    projects/{project_id}/locations/{location}/instances/{instance_id}.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsInstancesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists all instances in a project for either a specified location or for all
 *  locations.
 *
 *  Method: file.projects.locations.instances.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsInstancesList : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsInstancesListWithparent:]

/** List filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Sort results. Supported values are "name", "name desc" or "" (unsorted).
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/** The maximum number of items to return. */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  The next_page_token value to use if there are additional results to retrieve
 *  for this list request.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The project and location for which to retrieve instance
 *  information, in the format projects/{project_id}/locations/{location}. In
 *  Cloud Filestore, locations map to GCP zones, for example **us-west1-b**. To
 *  retrieve instance information for all locations, use "-" for the {location}
 *  value.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRCloudFilestore_ListInstancesResponse.
 *
 *  Lists all instances in a project for either a specified location or for all
 *  locations.
 *
 *  @param parent Required. The project and location for which to retrieve
 *    instance information, in the format
 *    projects/{project_id}/locations/{location}. In Cloud Filestore, locations
 *    map to GCP zones, for example **us-west1-b**. To retrieve instance
 *    information for all locations, use "-" for the {location} value.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsInstancesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Updates the settings of a specific instance.
 *
 *  Method: file.projects.locations.instances.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsInstancesPatch : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsInstancesPatchWithObject:name:]

/**
 *  Output only. The resource name of the instance, in the format
 *  projects/{project}/locations/{location}/instances/{instance}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Mask of fields to update. At least one path must be supplied in this field.
 *  The elements of the repeated paths field may only include these fields: *
 *  "description" * "file_shares" * "labels"
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRCloudFilestore_Operation.
 *
 *  Updates the settings of a specific instance.
 *
 *  @param object The @c GTLRCloudFilestore_Instance to include in the query.
 *  @param name Output only. The resource name of the instance, in the format
 *    projects/{project}/locations/{location}/instances/{instance}.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsInstancesPatch
 */
+ (instancetype)queryWithObject:(GTLRCloudFilestore_Instance *)object
                           name:(NSString *)name;

@end

/**
 *  Lists information about the supported locations for this service.
 *
 *  Method: file.projects.locations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsList : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsListWithname:]

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  If true, the returned list will include locations which are not yet
 *  revealed.
 */
@property(nonatomic, assign) BOOL includeUnrevealedLocations;

/** The resource that owns the locations collection, if applicable. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRCloudFilestore_ListLocationsResponse.
 *
 *  Lists information about the supported locations for this service.
 *
 *  @param name The resource that owns the locations collection, if applicable.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not guaranteed.
 *  If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation, the
 *  operation is not deleted; instead, it becomes an operation with an
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  `Code.CANCELLED`.
 *
 *  Method: file.projects.locations.operations.cancel
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsOperationsCancel : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsOperationsCancelWithObject:name:]

/** The name of the operation resource to be cancelled. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFilestore_Empty.
 *
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not guaranteed.
 *  If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation, the
 *  operation is not deleted; instead, it becomes an operation with an
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  `Code.CANCELLED`.
 *
 *  @param object The @c GTLRCloudFilestore_CancelOperationRequest to include in
 *    the query.
 *  @param name The name of the operation resource to be cancelled.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsOperationsCancel
 */
+ (instancetype)queryWithObject:(GTLRCloudFilestore_CancelOperationRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  Method: file.projects.locations.operations.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsOperationsDelete : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsOperationsDeleteWithname:]

/** The name of the operation resource to be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFilestore_Empty.
 *
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  @param name The name of the operation resource to be deleted.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsOperationsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: file.projects.locations.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsOperationsGet : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsOperationsGetWithname:]

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudFilestore_Operation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsOperationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
 *  `name` binding allows API services to override the binding to use different
 *  resource name schemes, such as `users/ * /operations`. To override the
 *  binding, API services can add a binding such as `"/v1/{name=users/
 *  *}/operations"` to their service configuration. For backwards compatibility,
 *  the default name includes the operations collection id, however overriding
 *  users must ensure the name binding is the parent resource, without the
 *  operations collection id.
 *
 *  Method: file.projects.locations.operations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudFilestoreCloudPlatform
 */
@interface GTLRCloudFilestoreQuery_ProjectsLocationsOperationsList : GTLRCloudFilestoreQuery
// Previous library name was
//   +[GTLQueryCloudFilestore queryForProjectsLocationsOperationsListWithname:]

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The name of the operation's parent resource. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRCloudFilestore_ListOperationsResponse.
 *
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
 *  `name` binding allows API services to override the binding to use different
 *  resource name schemes, such as `users/ * /operations`. To override the
 *  binding, API services can add a binding such as `"/v1/{name=users/
 *  *}/operations"` to their service configuration. For backwards compatibility,
 *  the default name includes the operations collection id, however overriding
 *  users must ensure the name binding is the parent resource, without the
 *  operations collection id.
 *
 *  @param name The name of the operation's parent resource.
 *
 *  @return GTLRCloudFilestoreQuery_ProjectsLocationsOperationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop