// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   AdSense Management API (adsense/v1.4)
// Description:
//   Accesses AdSense publishers' inventory and generates performance reports.
// Documentation:
//   https://developers.google.com/adsense/management/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRService.h"
#else
  #import "GTLRService.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scopes

/**
 *  Authorization scope: View and manage your AdSense data
 *
 *  Value "https://www.googleapis.com/auth/adsense"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeAdSense;
/**
 *  Authorization scope: View your AdSense data
 *
 *  Value "https://www.googleapis.com/auth/adsense.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeAdSenseReadonly;

// ----------------------------------------------------------------------------
//   GTLRAdSenseService
//

/**
 *  Service for executing AdSense Management API queries.
 *
 *  Accesses AdSense publishers' inventory and generates performance reports.
 */
@interface GTLRAdSenseService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRAdSenseQuery.h. The query can the be sent with GTLRService's execute
// methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop