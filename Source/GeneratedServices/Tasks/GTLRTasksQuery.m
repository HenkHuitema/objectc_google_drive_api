// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Tasks API (tasks/v1)
// Description:
//   The Google Tasks API lets you manage your tasks and task lists.

#import "GTLRTasksQuery.h"

#import "GTLRTasksObjects.h"

@implementation GTLRTasksQuery

@dynamic fields;

@end

@implementation GTLRTasksQuery_TasklistsDelete

@dynamic tasklist;

+ (instancetype)queryWithTasklist:(NSString *)tasklist {
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/users/@me/lists/{tasklist}";
  GTLRTasksQuery_TasklistsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.loggingName = @"tasks.tasklists.delete";
  return query;
}

@end

@implementation GTLRTasksQuery_TasklistsGet

@dynamic tasklist;

+ (instancetype)queryWithTasklist:(NSString *)tasklist {
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/users/@me/lists/{tasklist}";
  GTLRTasksQuery_TasklistsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.expectedObjectClass = [GTLRTasks_TaskList class];
  query.loggingName = @"tasks.tasklists.get";
  return query;
}

@end

@implementation GTLRTasksQuery_TasklistsInsert

+ (instancetype)queryWithObject:(GTLRTasks_TaskList *)object {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSString *pathURITemplate = @"tasks/v1/users/@me/lists";
  GTLRTasksQuery_TasklistsInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRTasks_TaskList class];
  query.loggingName = @"tasks.tasklists.insert";
  return query;
}

@end

@implementation GTLRTasksQuery_TasklistsList

@dynamic maxResults, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"tasks/v1/users/@me/lists";
  GTLRTasksQuery_TasklistsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRTasks_TaskLists class];
  query.loggingName = @"tasks.tasklists.list";
  return query;
}

@end

@implementation GTLRTasksQuery_TasklistsPatch

@dynamic tasklist;

+ (instancetype)queryWithObject:(GTLRTasks_TaskList *)object
                       tasklist:(NSString *)tasklist {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/users/@me/lists/{tasklist}";
  GTLRTasksQuery_TasklistsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.tasklist = tasklist;
  query.expectedObjectClass = [GTLRTasks_TaskList class];
  query.loggingName = @"tasks.tasklists.patch";
  return query;
}

@end

@implementation GTLRTasksQuery_TasklistsUpdate

@dynamic tasklist;

+ (instancetype)queryWithObject:(GTLRTasks_TaskList *)object
                       tasklist:(NSString *)tasklist {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/users/@me/lists/{tasklist}";
  GTLRTasksQuery_TasklistsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.tasklist = tasklist;
  query.expectedObjectClass = [GTLRTasks_TaskList class];
  query.loggingName = @"tasks.tasklists.update";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksClear

@dynamic tasklist;

+ (instancetype)queryWithTasklist:(NSString *)tasklist {
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/clear";
  GTLRTasksQuery_TasksClear *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.loggingName = @"tasks.tasks.clear";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksDelete

@dynamic task, tasklist;

+ (instancetype)queryWithTasklist:(NSString *)tasklist
                             task:(NSString *)task {
  NSArray *pathParams = @[
    @"task", @"tasklist"
  ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks/{task}";
  GTLRTasksQuery_TasksDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.task = task;
  query.loggingName = @"tasks.tasks.delete";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksGet

@dynamic task, tasklist;

+ (instancetype)queryWithTasklist:(NSString *)tasklist
                             task:(NSString *)task {
  NSArray *pathParams = @[
    @"task", @"tasklist"
  ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks/{task}";
  GTLRTasksQuery_TasksGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.task = task;
  query.expectedObjectClass = [GTLRTasks_Task class];
  query.loggingName = @"tasks.tasks.get";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksInsert

@dynamic parent, previous, tasklist;

+ (instancetype)queryWithObject:(GTLRTasks_Task *)object
                       tasklist:(NSString *)tasklist {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks";
  GTLRTasksQuery_TasksInsert *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.tasklist = tasklist;
  query.expectedObjectClass = [GTLRTasks_Task class];
  query.loggingName = @"tasks.tasks.insert";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksList

@dynamic completedMax, completedMin, dueMax, dueMin, maxResults, pageToken,
         showCompleted, showDeleted, showHidden, tasklist, updatedMin;

+ (instancetype)queryWithTasklist:(NSString *)tasklist {
  NSArray *pathParams = @[ @"tasklist" ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks";
  GTLRTasksQuery_TasksList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.expectedObjectClass = [GTLRTasks_Tasks class];
  query.loggingName = @"tasks.tasks.list";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksMove

@dynamic parent, previous, task, tasklist;

+ (instancetype)queryWithTasklist:(NSString *)tasklist
                             task:(NSString *)task {
  NSArray *pathParams = @[
    @"task", @"tasklist"
  ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks/{task}/move";
  GTLRTasksQuery_TasksMove *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.tasklist = tasklist;
  query.task = task;
  query.expectedObjectClass = [GTLRTasks_Task class];
  query.loggingName = @"tasks.tasks.move";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksPatch

@dynamic task, tasklist;

+ (instancetype)queryWithObject:(GTLRTasks_Task *)object
                       tasklist:(NSString *)tasklist
                           task:(NSString *)task {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"task", @"tasklist"
  ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks/{task}";
  GTLRTasksQuery_TasksPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.tasklist = tasklist;
  query.task = task;
  query.expectedObjectClass = [GTLRTasks_Task class];
  query.loggingName = @"tasks.tasks.patch";
  return query;
}

@end

@implementation GTLRTasksQuery_TasksUpdate

@dynamic task, tasklist;

+ (instancetype)queryWithObject:(GTLRTasks_Task *)object
                       tasklist:(NSString *)tasklist
                           task:(NSString *)task {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"task", @"tasklist"
  ];
  NSString *pathURITemplate = @"tasks/v1/lists/{tasklist}/tasks/{task}";
  GTLRTasksQuery_TasksUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.tasklist = tasklist;
  query.task = task;
  query.expectedObjectClass = [GTLRTasks_Task class];
  query.loggingName = @"tasks.tasks.update";
  return query;
}

@end
