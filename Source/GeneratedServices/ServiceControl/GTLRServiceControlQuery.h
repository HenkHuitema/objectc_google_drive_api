// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Service Control API (servicecontrol/v2)
// Description:
//   Provides control plane functionality to managed services, such as logging,
//   monitoring, and status checks.
// Documentation:
//   https://cloud.google.com/service-control/

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

@class GTLRServiceControl_CheckRequest;
@class GTLRServiceControl_ReportRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Service Control query classes.
 */
@interface GTLRServiceControlQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Private Preview. This feature is only available for approved services. This
 *  method provides admission control for services that are integrated with
 *  [Service Infrastructure](/service-infrastructure). It checks whether an
 *  operation should be allowed based on the service configuration and relevant
 *  policies. It must be called before the operation is executed. For more
 *  information, see [Admission
 *  Control](/service-infrastructure/docs/admission-control). NOTE: The
 *  admission control has an expected policy propagation delay of 60s. The
 *  caller **must** not depend on the most recent policy changes. NOTE: The
 *  admission control has a hard limit of 1 referenced resources per call. If an
 *  operation refers to more than 1 resources, the caller must call the Check
 *  method multiple times. This method requires the
 *  `servicemanagement.services.check` permission on the specified service. For
 *  more information, see [Service Control API Access
 *  Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).
 *
 *  Method: servicecontrol.services.check
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceControl
 *    @c kGTLRAuthScopeServiceControlCloudPlatform
 */
@interface GTLRServiceControlQuery_ServicesCheck : GTLRServiceControlQuery
// Previous library name was
//   +[GTLQueryServiceControl queryForServicesCheckWithObject:serviceName:]

/**
 *  The service name as specified in its service configuration. For example,
 *  `"pubsub.googleapis.com"`. See
 *  [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
 *  for the definition of a service name.
 */
@property(nonatomic, copy, nullable) NSString *serviceName;

/**
 *  Fetches a @c GTLRServiceControl_CheckResponse.
 *
 *  Private Preview. This feature is only available for approved services. This
 *  method provides admission control for services that are integrated with
 *  [Service Infrastructure](/service-infrastructure). It checks whether an
 *  operation should be allowed based on the service configuration and relevant
 *  policies. It must be called before the operation is executed. For more
 *  information, see [Admission
 *  Control](/service-infrastructure/docs/admission-control). NOTE: The
 *  admission control has an expected policy propagation delay of 60s. The
 *  caller **must** not depend on the most recent policy changes. NOTE: The
 *  admission control has a hard limit of 1 referenced resources per call. If an
 *  operation refers to more than 1 resources, the caller must call the Check
 *  method multiple times. This method requires the
 *  `servicemanagement.services.check` permission on the specified service. For
 *  more information, see [Service Control API Access
 *  Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).
 *
 *  @param object The @c GTLRServiceControl_CheckRequest to include in the
 *    query.
 *  @param serviceName The service name as specified in its service
 *    configuration. For example, `"pubsub.googleapis.com"`. See
 *    [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
 *    for the definition of a service name.
 *
 *  @return GTLRServiceControlQuery_ServicesCheck
 */
+ (instancetype)queryWithObject:(GTLRServiceControl_CheckRequest *)object
                    serviceName:(NSString *)serviceName;

@end

/**
 *  Private Preview. This feature is only available for approved services. This
 *  method provides telemetry reporting for services that are integrated with
 *  [Service Infrastructure](/service-infrastructure). It reports a list of
 *  operations that have occurred on a service. It must be called after the
 *  operations have been executed. For more information, see [Telemetry
 *  Reporting](/service-infrastructure/docs/telemetry-reporting). NOTE: The
 *  telemetry reporting has a hard limit of 1000 operations and 1MB per Report
 *  call. It is recommended to have no more than 100 operations per call. This
 *  method requires the `servicemanagement.services.report` permission on the
 *  specified service. For more information, see [Service Control API Access
 *  Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).
 *
 *  Method: servicecontrol.services.report
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceControl
 *    @c kGTLRAuthScopeServiceControlCloudPlatform
 */
@interface GTLRServiceControlQuery_ServicesReport : GTLRServiceControlQuery
// Previous library name was
//   +[GTLQueryServiceControl queryForServicesReportWithObject:serviceName:]

/**
 *  The service name as specified in its service configuration. For example,
 *  `"pubsub.googleapis.com"`. See
 *  [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
 *  for the definition of a service name.
 */
@property(nonatomic, copy, nullable) NSString *serviceName;

/**
 *  Fetches a @c GTLRServiceControl_ReportResponse.
 *
 *  Private Preview. This feature is only available for approved services. This
 *  method provides telemetry reporting for services that are integrated with
 *  [Service Infrastructure](/service-infrastructure). It reports a list of
 *  operations that have occurred on a service. It must be called after the
 *  operations have been executed. For more information, see [Telemetry
 *  Reporting](/service-infrastructure/docs/telemetry-reporting). NOTE: The
 *  telemetry reporting has a hard limit of 1000 operations and 1MB per Report
 *  call. It is recommended to have no more than 100 operations per call. This
 *  method requires the `servicemanagement.services.report` permission on the
 *  specified service. For more information, see [Service Control API Access
 *  Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).
 *
 *  @param object The @c GTLRServiceControl_ReportRequest to include in the
 *    query.
 *  @param serviceName The service name as specified in its service
 *    configuration. For example, `"pubsub.googleapis.com"`. See
 *    [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
 *    for the definition of a service name.
 *
 *  @return GTLRServiceControlQuery_ServicesReport
 */
+ (instancetype)queryWithObject:(GTLRServiceControl_ReportRequest *)object
                    serviceName:(NSString *)serviceName;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop