// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Ad Experience Report API (adexperiencereport/v1)
// Description:
//   Views Ad Experience Report data, and gets a list of sites that have a
//   significant number of annoying ads.
// Documentation:
//   https://developers.google.com/ad-experience-report/

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

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Ad Experience Report query classes.
 */
@interface GTLRAdExperienceReportQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets a site's Ad Experience Report summary.
 *
 *  Method: adexperiencereport.sites.get
 */
@interface GTLRAdExperienceReportQuery_SitesGet : GTLRAdExperienceReportQuery
// Previous library name was
//   +[GTLQueryAdExperienceReport queryForSitesGetWithname:]

/**
 *  Required. The name of the site whose summary to get, e.g.
 *  `sites/http%3A%2F%2Fwww.google.com%2F`. Format: `sites/{site}`
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAdExperienceReport_SiteSummaryResponse.
 *
 *  Gets a site's Ad Experience Report summary.
 *
 *  @param name Required. The name of the site whose summary to get, e.g.
 *    `sites/http%3A%2F%2Fwww.google.com%2F`. Format: `sites/{site}`
 *
 *  @return GTLRAdExperienceReportQuery_SitesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists sites that are failing in the Ad Experience Report on at least one
 *  platform.
 *
 *  Method: adexperiencereport.violatingSites.list
 */
@interface GTLRAdExperienceReportQuery_ViolatingSitesList : GTLRAdExperienceReportQuery
// Previous library name was
//   +[GTLQueryAdExperienceReport queryForViolatingSitesList]

/**
 *  Fetches a @c GTLRAdExperienceReport_ViolatingSitesResponse.
 *
 *  Lists sites that are failing in the Ad Experience Report on at least one
 *  platform.
 *
 *  @return GTLRAdExperienceReportQuery_ViolatingSitesList
 */
+ (instancetype)query;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop