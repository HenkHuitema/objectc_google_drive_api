// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Civic Information API (civicinfo/v2)
// Description:
//   Provides polling places, early vote locations, contest data, election
//   officials, and government representatives for U.S. residential addresses.
// Documentation:
//   https://developers.google.com/civic-information/

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

// ----------------------------------------------------------------------------
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// levels

/** Value: "administrativeArea1" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsAdministrativeArea1;
/** Value: "administrativeArea2" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsAdministrativeArea2;
/** Value: "country" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsCountry;
/** Value: "international" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsInternational;
/** Value: "locality" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsLocality;
/** Value: "regional" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsRegional;
/** Value: "special" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsSpecial;
/** Value: "subLocality1" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsSubLocality1;
/** Value: "subLocality2" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoLevelsSubLocality2;

// ----------------------------------------------------------------------------
// roles

/** Value: "deputyHeadOfGovernment" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesDeputyHeadOfGovernment;
/** Value: "executiveCouncil" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesExecutiveCouncil;
/** Value: "governmentOfficer" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesGovernmentOfficer;
/** Value: "headOfGovernment" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesHeadOfGovernment;
/** Value: "headOfState" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesHeadOfState;
/** Value: "highestCourtJudge" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesHighestCourtJudge;
/** Value: "judge" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesJudge;
/** Value: "legislatorLowerBody" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesLegislatorLowerBody;
/** Value: "legislatorUpperBody" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesLegislatorUpperBody;
/** Value: "schoolBoard" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesSchoolBoard;
/** Value: "specialPurposeOfficer" */
FOUNDATION_EXTERN NSString * const kGTLRCivicInfoRolesSpecialPurposeOfficer;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Civic Info query classes.
 */
@interface GTLRCivicInfoQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Searches for political divisions by their natural name or OCD ID.
 *
 *  Method: civicinfo.divisions.search
 */
@interface GTLRCivicInfoQuery_DivisionsSearch : GTLRCivicInfoQuery
// Previous library name was
//   +[GTLQueryCivicInfo queryForDivisionsSearch]

/**
 *  The search query. Queries can cover any parts of a OCD ID or a human
 *  readable division name. All words given in the query are treated as required
 *  patterns. In addition to that, most query operators of the Apache Lucene
 *  library are supported. See
 *  http://lucene.apache.org/core/2_9_4/queryparsersyntax.html
 */
@property(nonatomic, copy, nullable) NSString *query;

/**
 *  Fetches a @c GTLRCivicInfo_DivisionSearchResponse.
 *
 *  Searches for political divisions by their natural name or OCD ID.
 *
 *  @return GTLRCivicInfoQuery_DivisionsSearch
 */
+ (instancetype)query;

@end

/**
 *  List of available elections to query.
 *
 *  Method: civicinfo.elections.electionQuery
 */
@interface GTLRCivicInfoQuery_ElectionsElectionQuery : GTLRCivicInfoQuery
// Previous library name was
//   +[GTLQueryCivicInfo queryForElectionsElectionQuery]

/**
 *  Fetches a @c GTLRCivicInfo_ElectionsQueryResponse.
 *
 *  List of available elections to query.
 *
 *  @return GTLRCivicInfoQuery_ElectionsElectionQuery
 */
+ (instancetype)query;

@end

/**
 *  Looks up information relevant to a voter based on the voter's registered
 *  address.
 *
 *  Method: civicinfo.elections.voterInfoQuery
 */
@interface GTLRCivicInfoQuery_ElectionsVoterInfoQuery : GTLRCivicInfoQuery
// Previous library name was
//   +[GTLQueryCivicInfo queryForElectionsVoterInfoQueryWithaddress:]

/** The registered address of the voter to look up. */
@property(nonatomic, copy, nullable) NSString *address;

/**
 *  The unique ID of the election to look up. A list of election IDs can be
 *  obtained at https://www.googleapis.com/civicinfo/{version}/elections. If no
 *  election ID is specified in the query and there is more than one election
 *  with data for the given voter, the additional elections are provided in the
 *  otherElections response field.
 *
 *  @note If not set, the documented server-side default will be 0.
 */
@property(nonatomic, assign) long long electionId;

/**
 *  If set to true, only data from official state sources will be returned.
 *
 *  @note If not set, the documented server-side default will be false.
 */
@property(nonatomic, assign) BOOL officialOnly;

/**
 *  If set to true, the query will return the success code and include any
 *  partial information when it is unable to determine a matching address or
 *  unable to determine the election for electionId=0 queries.
 *
 *  @note If not set, the documented server-side default will be false.
 */
@property(nonatomic, assign) BOOL returnAllAvailableData;

/**
 *  Fetches a @c GTLRCivicInfo_VoterInfoResponse.
 *
 *  Looks up information relevant to a voter based on the voter's registered
 *  address.
 *
 *  @param address The registered address of the voter to look up.
 *
 *  @return GTLRCivicInfoQuery_ElectionsVoterInfoQuery
 */
+ (instancetype)queryWithAddress:(NSString *)address;

@end

/**
 *  Looks up political geography and representative information for a single
 *  address.
 *
 *  Method: civicinfo.representatives.representativeInfoByAddress
 */
@interface GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByAddress : GTLRCivicInfoQuery
// Previous library name was
//   +[GTLQueryCivicInfo queryForRepresentativesRepresentativeInfoByAddress]

/**
 *  The address to look up. May only be specified if the field ocdId is not
 *  given in the URL
 */
@property(nonatomic, copy, nullable) NSString *address;

/**
 *  Whether to return information about offices and officials. If false, only
 *  the top-level district information will be returned.
 *
 *  @note If not set, the documented server-side default will be true.
 */
@property(nonatomic, assign) BOOL includeOffices;

/**
 *  A list of office levels to filter by. Only offices that serve at least one
 *  of these levels will be returned. Divisions that don't contain a matching
 *  office will not be returned.
 *
 *  Likely values:
 *    @arg @c kGTLRCivicInfoLevelsInternational Value "international"
 *    @arg @c kGTLRCivicInfoLevelsCountry Value "country"
 *    @arg @c kGTLRCivicInfoLevelsAdministrativeArea1 Value
 *        "administrativeArea1"
 *    @arg @c kGTLRCivicInfoLevelsRegional Value "regional"
 *    @arg @c kGTLRCivicInfoLevelsAdministrativeArea2 Value
 *        "administrativeArea2"
 *    @arg @c kGTLRCivicInfoLevelsLocality Value "locality"
 *    @arg @c kGTLRCivicInfoLevelsSubLocality1 Value "subLocality1"
 *    @arg @c kGTLRCivicInfoLevelsSubLocality2 Value "subLocality2"
 *    @arg @c kGTLRCivicInfoLevelsSpecial Value "special"
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *levels;

/**
 *  A list of office roles to filter by. Only offices fulfilling one of these
 *  roles will be returned. Divisions that don't contain a matching office will
 *  not be returned.
 *
 *  Likely values:
 *    @arg @c kGTLRCivicInfoRolesHeadOfState Value "headOfState"
 *    @arg @c kGTLRCivicInfoRolesHeadOfGovernment Value "headOfGovernment"
 *    @arg @c kGTLRCivicInfoRolesDeputyHeadOfGovernment Value
 *        "deputyHeadOfGovernment"
 *    @arg @c kGTLRCivicInfoRolesGovernmentOfficer Value "governmentOfficer"
 *    @arg @c kGTLRCivicInfoRolesExecutiveCouncil Value "executiveCouncil"
 *    @arg @c kGTLRCivicInfoRolesLegislatorUpperBody Value "legislatorUpperBody"
 *    @arg @c kGTLRCivicInfoRolesLegislatorLowerBody Value "legislatorLowerBody"
 *    @arg @c kGTLRCivicInfoRolesHighestCourtJudge Value "highestCourtJudge"
 *    @arg @c kGTLRCivicInfoRolesJudge Value "judge"
 *    @arg @c kGTLRCivicInfoRolesSchoolBoard Value "schoolBoard"
 *    @arg @c kGTLRCivicInfoRolesSpecialPurposeOfficer Value
 *        "specialPurposeOfficer"
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *roles;

/**
 *  Fetches a @c GTLRCivicInfo_RepresentativeInfoResponse.
 *
 *  Looks up political geography and representative information for a single
 *  address.
 *
 *  @return GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByAddress
 */
+ (instancetype)query;

@end

/**
 *  Looks up representative information for a single geographic division.
 *
 *  Method: civicinfo.representatives.representativeInfoByDivision
 */
@interface GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByDivision : GTLRCivicInfoQuery
// Previous library name was
//   +[GTLQueryCivicInfo queryForRepresentativesRepresentativeInfoByDivisionWithocdId:]

/**
 *  A list of office levels to filter by. Only offices that serve at least one
 *  of these levels will be returned. Divisions that don't contain a matching
 *  office will not be returned.
 *
 *  Likely values:
 *    @arg @c kGTLRCivicInfoLevelsInternational Value "international"
 *    @arg @c kGTLRCivicInfoLevelsCountry Value "country"
 *    @arg @c kGTLRCivicInfoLevelsAdministrativeArea1 Value
 *        "administrativeArea1"
 *    @arg @c kGTLRCivicInfoLevelsRegional Value "regional"
 *    @arg @c kGTLRCivicInfoLevelsAdministrativeArea2 Value
 *        "administrativeArea2"
 *    @arg @c kGTLRCivicInfoLevelsLocality Value "locality"
 *    @arg @c kGTLRCivicInfoLevelsSubLocality1 Value "subLocality1"
 *    @arg @c kGTLRCivicInfoLevelsSubLocality2 Value "subLocality2"
 *    @arg @c kGTLRCivicInfoLevelsSpecial Value "special"
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *levels;

/** The Open Civic Data division identifier of the division to look up. */
@property(nonatomic, copy, nullable) NSString *ocdId;

/**
 *  If true, information about all divisions contained in the division requested
 *  will be included as well. For example, if querying
 *  ocd-division/country:us/district:dc, this would also return all DC's wards
 *  and ANCs.
 */
@property(nonatomic, assign) BOOL recursive;

/**
 *  A list of office roles to filter by. Only offices fulfilling one of these
 *  roles will be returned. Divisions that don't contain a matching office will
 *  not be returned.
 *
 *  Likely values:
 *    @arg @c kGTLRCivicInfoRolesHeadOfState Value "headOfState"
 *    @arg @c kGTLRCivicInfoRolesHeadOfGovernment Value "headOfGovernment"
 *    @arg @c kGTLRCivicInfoRolesDeputyHeadOfGovernment Value
 *        "deputyHeadOfGovernment"
 *    @arg @c kGTLRCivicInfoRolesGovernmentOfficer Value "governmentOfficer"
 *    @arg @c kGTLRCivicInfoRolesExecutiveCouncil Value "executiveCouncil"
 *    @arg @c kGTLRCivicInfoRolesLegislatorUpperBody Value "legislatorUpperBody"
 *    @arg @c kGTLRCivicInfoRolesLegislatorLowerBody Value "legislatorLowerBody"
 *    @arg @c kGTLRCivicInfoRolesHighestCourtJudge Value "highestCourtJudge"
 *    @arg @c kGTLRCivicInfoRolesJudge Value "judge"
 *    @arg @c kGTLRCivicInfoRolesSchoolBoard Value "schoolBoard"
 *    @arg @c kGTLRCivicInfoRolesSpecialPurposeOfficer Value
 *        "specialPurposeOfficer"
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *roles;

/**
 *  Fetches a @c GTLRCivicInfo_RepresentativeInfoData.
 *
 *  Looks up representative information for a single geographic division.
 *
 *  @param ocdId The Open Civic Data division identifier of the division to look
 *    up.
 *
 *  @return GTLRCivicInfoQuery_RepresentativesRepresentativeInfoByDivision
 */
+ (instancetype)queryWithOcdId:(NSString *)ocdId;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop