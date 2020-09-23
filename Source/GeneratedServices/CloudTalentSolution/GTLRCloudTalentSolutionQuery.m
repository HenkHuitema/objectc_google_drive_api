// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Talent Solution API (jobs/v3)
// Description:
//   Cloud Talent Solution provides the capability to create, read, update, and
//   delete job postings, as well as search jobs based on keywords and filters.
// Documentation:
//   https://cloud.google.com/talent-solution/job-search/docs/

#import "GTLRCloudTalentSolutionQuery.h"

#import "GTLRCloudTalentSolutionObjects.h"

// ----------------------------------------------------------------------------
// Constants

// jobView
NSString * const kGTLRCloudTalentSolutionJobViewJobViewFull    = @"JOB_VIEW_FULL";
NSString * const kGTLRCloudTalentSolutionJobViewJobViewIdOnly  = @"JOB_VIEW_ID_ONLY";
NSString * const kGTLRCloudTalentSolutionJobViewJobViewMinimal = @"JOB_VIEW_MINIMAL";
NSString * const kGTLRCloudTalentSolutionJobViewJobViewSmall   = @"JOB_VIEW_SMALL";
NSString * const kGTLRCloudTalentSolutionJobViewJobViewUnspecified = @"JOB_VIEW_UNSPECIFIED";

// scope
NSString * const kGTLRCloudTalentSolutionScopeCompletionScopeUnspecified = @"COMPLETION_SCOPE_UNSPECIFIED";
NSString * const kGTLRCloudTalentSolutionScopePublic           = @"PUBLIC";
NSString * const kGTLRCloudTalentSolutionScopeTenant           = @"TENANT";

// type
NSString * const kGTLRCloudTalentSolutionTypeCombined          = @"COMBINED";
NSString * const kGTLRCloudTalentSolutionTypeCompanyName       = @"COMPANY_NAME";
NSString * const kGTLRCloudTalentSolutionTypeCompletionTypeUnspecified = @"COMPLETION_TYPE_UNSPECIFIED";
NSString * const kGTLRCloudTalentSolutionTypeJobTitle          = @"JOB_TITLE";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRCloudTalentSolutionQuery

@dynamic fields;

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsClientEventsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_CreateClientEventRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/clientEvents";
  GTLRCloudTalentSolutionQuery_ProjectsClientEventsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_ClientEvent class];
  query.loggingName = @"jobs.projects.clientEvents.create";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsCompaniesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_CreateCompanyRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/companies";
  GTLRCloudTalentSolutionQuery_ProjectsCompaniesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Company class];
  query.loggingName = @"jobs.projects.companies.create";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsCompaniesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRCloudTalentSolutionQuery_ProjectsCompaniesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Empty class];
  query.loggingName = @"jobs.projects.companies.delete";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsCompaniesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRCloudTalentSolutionQuery_ProjectsCompaniesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Company class];
  query.loggingName = @"jobs.projects.companies.get";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsCompaniesList

@dynamic pageSize, pageToken, parent, requireOpenJobs;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/companies";
  GTLRCloudTalentSolutionQuery_ProjectsCompaniesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_ListCompaniesResponse class];
  query.loggingName = @"jobs.projects.companies.list";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsCompaniesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_UpdateCompanyRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRCloudTalentSolutionQuery_ProjectsCompaniesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Company class];
  query.loggingName = @"jobs.projects.companies.patch";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsComplete

@dynamic companyName, languageCode, languageCodes, name, pageSize, query, scope,
         type;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"languageCodes" : [NSString class]
  };
  return map;
}

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}:complete";
  GTLRCloudTalentSolutionQuery_ProjectsComplete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_CompleteQueryResponse class];
  query.loggingName = @"jobs.projects.complete";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsBatchDelete

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_BatchDeleteJobsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/jobs:batchDelete";
  GTLRCloudTalentSolutionQuery_ProjectsJobsBatchDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Empty class];
  query.loggingName = @"jobs.projects.jobs.batchDelete";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_CreateJobRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/jobs";
  GTLRCloudTalentSolutionQuery_ProjectsJobsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Job class];
  query.loggingName = @"jobs.projects.jobs.create";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRCloudTalentSolutionQuery_ProjectsJobsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Empty class];
  query.loggingName = @"jobs.projects.jobs.delete";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRCloudTalentSolutionQuery_ProjectsJobsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Job class];
  query.loggingName = @"jobs.projects.jobs.get";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsList

@dynamic filter, jobView, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/jobs";
  GTLRCloudTalentSolutionQuery_ProjectsJobsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_ListJobsResponse class];
  query.loggingName = @"jobs.projects.jobs.list";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_UpdateJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRCloudTalentSolutionQuery_ProjectsJobsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTalentSolution_Job class];
  query.loggingName = @"jobs.projects.jobs.patch";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsSearch

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_SearchJobsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/jobs:search";
  GTLRCloudTalentSolutionQuery_ProjectsJobsSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_SearchJobsResponse class];
  query.loggingName = @"jobs.projects.jobs.search";
  return query;
}

@end

@implementation GTLRCloudTalentSolutionQuery_ProjectsJobsSearchForAlert

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTalentSolution_SearchJobsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v3/{+parent}/jobs:searchForAlert";
  GTLRCloudTalentSolutionQuery_ProjectsJobsSearchForAlert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTalentSolution_SearchJobsResponse class];
  query.loggingName = @"jobs.projects.jobs.searchForAlert";
  return query;
}

@end
