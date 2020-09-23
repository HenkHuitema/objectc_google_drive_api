// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Spanner API (spanner/v1)
// Description:
//   Cloud Spanner is a managed, mission-critical, globally consistent and
//   scalable relational database service.
// Documentation:
//   https://cloud.google.com/spanner/

#import "GTLRSpannerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRSpanner_Backup.state
NSString * const kGTLRSpanner_Backup_State_Creating         = @"CREATING";
NSString * const kGTLRSpanner_Backup_State_Ready            = @"READY";
NSString * const kGTLRSpanner_Backup_State_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRSpanner_Database.state
NSString * const kGTLRSpanner_Database_State_Creating         = @"CREATING";
NSString * const kGTLRSpanner_Database_State_Ready            = @"READY";
NSString * const kGTLRSpanner_Database_State_ReadyOptimizing  = @"READY_OPTIMIZING";
NSString * const kGTLRSpanner_Database_State_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRSpanner_ExecuteSqlRequest.queryMode
NSString * const kGTLRSpanner_ExecuteSqlRequest_QueryMode_Normal = @"NORMAL";
NSString * const kGTLRSpanner_ExecuteSqlRequest_QueryMode_Plan = @"PLAN";
NSString * const kGTLRSpanner_ExecuteSqlRequest_QueryMode_Profile = @"PROFILE";

// GTLRSpanner_Instance.state
NSString * const kGTLRSpanner_Instance_State_Creating         = @"CREATING";
NSString * const kGTLRSpanner_Instance_State_Ready            = @"READY";
NSString * const kGTLRSpanner_Instance_State_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRSpanner_PlanNode.kind
NSString * const kGTLRSpanner_PlanNode_Kind_KindUnspecified = @"KIND_UNSPECIFIED";
NSString * const kGTLRSpanner_PlanNode_Kind_Relational      = @"RELATIONAL";
NSString * const kGTLRSpanner_PlanNode_Kind_Scalar          = @"SCALAR";

// GTLRSpanner_ReplicaInfo.type
NSString * const kGTLRSpanner_ReplicaInfo_Type_ReadOnly        = @"READ_ONLY";
NSString * const kGTLRSpanner_ReplicaInfo_Type_ReadWrite       = @"READ_WRITE";
NSString * const kGTLRSpanner_ReplicaInfo_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";
NSString * const kGTLRSpanner_ReplicaInfo_Type_Witness         = @"WITNESS";

// GTLRSpanner_RestoreDatabaseMetadata.sourceType
NSString * const kGTLRSpanner_RestoreDatabaseMetadata_SourceType_Backup = @"BACKUP";
NSString * const kGTLRSpanner_RestoreDatabaseMetadata_SourceType_TypeUnspecified = @"TYPE_UNSPECIFIED";

// GTLRSpanner_RestoreInfo.sourceType
NSString * const kGTLRSpanner_RestoreInfo_SourceType_Backup    = @"BACKUP";
NSString * const kGTLRSpanner_RestoreInfo_SourceType_TypeUnspecified = @"TYPE_UNSPECIFIED";

// GTLRSpanner_Type.code
NSString * const kGTLRSpanner_Type_Code_Array               = @"ARRAY";
NSString * const kGTLRSpanner_Type_Code_Bool                = @"BOOL";
NSString * const kGTLRSpanner_Type_Code_Bytes               = @"BYTES";
NSString * const kGTLRSpanner_Type_Code_Date                = @"DATE";
NSString * const kGTLRSpanner_Type_Code_Float64             = @"FLOAT64";
NSString * const kGTLRSpanner_Type_Code_Int64               = @"INT64";
NSString * const kGTLRSpanner_Type_Code_Numeric             = @"NUMERIC";
NSString * const kGTLRSpanner_Type_Code_String              = @"STRING";
NSString * const kGTLRSpanner_Type_Code_Struct              = @"STRUCT";
NSString * const kGTLRSpanner_Type_Code_Timestamp           = @"TIMESTAMP";
NSString * const kGTLRSpanner_Type_Code_TypeCodeUnspecified = @"TYPE_CODE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Backup
//

@implementation GTLRSpanner_Backup
@dynamic createTime, database, expireTime, name, referencingDatabases,
         sizeBytes, state;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"referencingDatabases" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_BackupInfo
//

@implementation GTLRSpanner_BackupInfo
@dynamic backup, createTime, sourceDatabase;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_BatchCreateSessionsRequest
//

@implementation GTLRSpanner_BatchCreateSessionsRequest
@dynamic sessionCount, sessionTemplate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_BatchCreateSessionsResponse
//

@implementation GTLRSpanner_BatchCreateSessionsResponse
@dynamic session;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"session" : [GTLRSpanner_Session class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_BeginTransactionRequest
//

@implementation GTLRSpanner_BeginTransactionRequest
@dynamic options;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Binding
//

@implementation GTLRSpanner_Binding
@dynamic condition, members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ChildLink
//

@implementation GTLRSpanner_ChildLink
@dynamic childIndex, type, variable;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CommitRequest
//

@implementation GTLRSpanner_CommitRequest
@dynamic mutations, singleUseTransaction, transactionId;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mutations" : [GTLRSpanner_Mutation class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CommitResponse
//

@implementation GTLRSpanner_CommitResponse
@dynamic commitTimestamp;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CreateBackupMetadata
//

@implementation GTLRSpanner_CreateBackupMetadata
@dynamic cancelTime, database, name, progress;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CreateDatabaseMetadata
//

@implementation GTLRSpanner_CreateDatabaseMetadata
@dynamic database;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CreateDatabaseRequest
//

@implementation GTLRSpanner_CreateDatabaseRequest
@dynamic createStatement, extraStatements;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"extraStatements" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CreateInstanceMetadata
//

@implementation GTLRSpanner_CreateInstanceMetadata
@dynamic cancelTime, endTime, instance, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CreateInstanceRequest
//

@implementation GTLRSpanner_CreateInstanceRequest
@dynamic instance, instanceId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_CreateSessionRequest
//

@implementation GTLRSpanner_CreateSessionRequest
@dynamic session;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Database
//

@implementation GTLRSpanner_Database
@dynamic createTime, name, restoreInfo, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Delete
//

@implementation GTLRSpanner_Delete
@dynamic keySet, table;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Empty
//

@implementation GTLRSpanner_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ExecuteBatchDmlRequest
//

@implementation GTLRSpanner_ExecuteBatchDmlRequest
@dynamic seqno, statements, transaction;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"statements" : [GTLRSpanner_Statement class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ExecuteBatchDmlResponse
//

@implementation GTLRSpanner_ExecuteBatchDmlResponse
@dynamic resultSets, status;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resultSets" : [GTLRSpanner_ResultSet class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ExecuteSqlRequest
//

@implementation GTLRSpanner_ExecuteSqlRequest
@dynamic params, paramTypes, partitionToken, queryMode, queryOptions,
         resumeToken, seqno, sql, transaction;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ExecuteSqlRequest_Params
//

@implementation GTLRSpanner_ExecuteSqlRequest_Params

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ExecuteSqlRequest_ParamTypes
//

@implementation GTLRSpanner_ExecuteSqlRequest_ParamTypes

+ (Class)classForAdditionalProperties {
  return [GTLRSpanner_Type class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Expr
//

@implementation GTLRSpanner_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Field
//

@implementation GTLRSpanner_Field
@dynamic name, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_GetDatabaseDdlResponse
//

@implementation GTLRSpanner_GetDatabaseDdlResponse
@dynamic statements;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"statements" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_GetIamPolicyRequest
//

@implementation GTLRSpanner_GetIamPolicyRequest
@dynamic options;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_GetPolicyOptions
//

@implementation GTLRSpanner_GetPolicyOptions
@dynamic requestedPolicyVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Instance
//

@implementation GTLRSpanner_Instance
@dynamic config, displayName, endpointUris, labels, name, nodeCount, state;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"endpointUris" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Instance_Labels
//

@implementation GTLRSpanner_Instance_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_InstanceConfig
//

@implementation GTLRSpanner_InstanceConfig
@dynamic displayName, name, replicas;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"replicas" : [GTLRSpanner_ReplicaInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_KeyRange
//

@implementation GTLRSpanner_KeyRange
@dynamic endClosed, endOpen, startClosed, startOpen;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"endClosed" : [NSObject class],
    @"endOpen" : [NSObject class],
    @"startClosed" : [NSObject class],
    @"startOpen" : [NSObject class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_KeySet
//

@implementation GTLRSpanner_KeySet
@dynamic all, keys, ranges;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"keys" : [NSObject class],
    @"ranges" : [GTLRSpanner_KeyRange class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListBackupOperationsResponse
//

@implementation GTLRSpanner_ListBackupOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRSpanner_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListBackupsResponse
//

@implementation GTLRSpanner_ListBackupsResponse
@dynamic backups, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"backups" : [GTLRSpanner_Backup class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"backups";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListDatabaseOperationsResponse
//

@implementation GTLRSpanner_ListDatabaseOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRSpanner_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListDatabasesResponse
//

@implementation GTLRSpanner_ListDatabasesResponse
@dynamic databases, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"databases" : [GTLRSpanner_Database class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"databases";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListInstanceConfigsResponse
//

@implementation GTLRSpanner_ListInstanceConfigsResponse
@dynamic instanceConfigs, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instanceConfigs" : [GTLRSpanner_InstanceConfig class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"instanceConfigs";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListInstancesResponse
//

@implementation GTLRSpanner_ListInstancesResponse
@dynamic instances, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instances" : [GTLRSpanner_Instance class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"instances";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListOperationsResponse
//

@implementation GTLRSpanner_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRSpanner_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ListSessionsResponse
//

@implementation GTLRSpanner_ListSessionsResponse
@dynamic nextPageToken, sessions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"sessions" : [GTLRSpanner_Session class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"sessions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Mutation
//

@implementation GTLRSpanner_Mutation
@dynamic deleteProperty, insert, insertOrUpdate, replace, update;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"deleteProperty" : @"delete" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Operation
//

@implementation GTLRSpanner_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Operation_Metadata
//

@implementation GTLRSpanner_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Operation_Response
//

@implementation GTLRSpanner_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_OperationProgress
//

@implementation GTLRSpanner_OperationProgress
@dynamic endTime, progressPercent, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_OptimizeRestoredDatabaseMetadata
//

@implementation GTLRSpanner_OptimizeRestoredDatabaseMetadata
@dynamic name, progress;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartialResultSet
//

@implementation GTLRSpanner_PartialResultSet
@dynamic chunkedValue, metadata, resumeToken, stats, values;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"values" : [NSObject class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Partition
//

@implementation GTLRSpanner_Partition
@dynamic partitionToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionedDml
//

@implementation GTLRSpanner_PartitionedDml
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionOptions
//

@implementation GTLRSpanner_PartitionOptions
@dynamic maxPartitions, partitionSizeBytes;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionQueryRequest
//

@implementation GTLRSpanner_PartitionQueryRequest
@dynamic params, paramTypes, partitionOptions, sql, transaction;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionQueryRequest_Params
//

@implementation GTLRSpanner_PartitionQueryRequest_Params

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionQueryRequest_ParamTypes
//

@implementation GTLRSpanner_PartitionQueryRequest_ParamTypes

+ (Class)classForAdditionalProperties {
  return [GTLRSpanner_Type class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionReadRequest
//

@implementation GTLRSpanner_PartitionReadRequest
@dynamic columns, index, keySet, partitionOptions, table, transaction;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"columns" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PartitionResponse
//

@implementation GTLRSpanner_PartitionResponse
@dynamic partitions, transaction;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"partitions" : [GTLRSpanner_Partition class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PlanNode
//

@implementation GTLRSpanner_PlanNode
@dynamic childLinks, displayName, executionStats, index, kind, metadata,
         shortRepresentation;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"childLinks" : [GTLRSpanner_ChildLink class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PlanNode_ExecutionStats
//

@implementation GTLRSpanner_PlanNode_ExecutionStats

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_PlanNode_Metadata
//

@implementation GTLRSpanner_PlanNode_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Policy
//

@implementation GTLRSpanner_Policy
@dynamic bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bindings" : [GTLRSpanner_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_QueryOptions
//

@implementation GTLRSpanner_QueryOptions
@dynamic optimizerVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_QueryPlan
//

@implementation GTLRSpanner_QueryPlan
@dynamic planNodes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"planNodes" : [GTLRSpanner_PlanNode class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ReadOnly
//

@implementation GTLRSpanner_ReadOnly
@dynamic exactStaleness, maxStaleness, minReadTimestamp, readTimestamp,
         returnReadTimestamp, strong;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ReadRequest
//

@implementation GTLRSpanner_ReadRequest
@dynamic columns, index, keySet, limit, partitionToken, resumeToken, table,
         transaction;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"columns" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ReadWrite
//

@implementation GTLRSpanner_ReadWrite
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ReplicaInfo
//

@implementation GTLRSpanner_ReplicaInfo
@dynamic defaultLeaderLocation, location, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_RestoreDatabaseMetadata
//

@implementation GTLRSpanner_RestoreDatabaseMetadata
@dynamic backupInfo, cancelTime, name, optimizeDatabaseOperationName, progress,
         sourceType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_RestoreDatabaseRequest
//

@implementation GTLRSpanner_RestoreDatabaseRequest
@dynamic backup, databaseId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_RestoreInfo
//

@implementation GTLRSpanner_RestoreInfo
@dynamic backupInfo, sourceType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ResultSet
//

@implementation GTLRSpanner_ResultSet
@dynamic metadata, rows, stats;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"rows" : [NSObject class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ResultSetMetadata
//

@implementation GTLRSpanner_ResultSetMetadata
@dynamic rowType, transaction;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ResultSetStats
//

@implementation GTLRSpanner_ResultSetStats
@dynamic queryPlan, queryStats, rowCountExact, rowCountLowerBound;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ResultSetStats_QueryStats
//

@implementation GTLRSpanner_ResultSetStats_QueryStats

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_RollbackRequest
//

@implementation GTLRSpanner_RollbackRequest
@dynamic transactionId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Session
//

@implementation GTLRSpanner_Session
@dynamic approximateLastUseTime, createTime, labels, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Session_Labels
//

@implementation GTLRSpanner_Session_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_SetIamPolicyRequest
//

@implementation GTLRSpanner_SetIamPolicyRequest
@dynamic policy;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ShortRepresentation
//

@implementation GTLRSpanner_ShortRepresentation
@dynamic descriptionProperty, subqueries;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_ShortRepresentation_Subqueries
//

@implementation GTLRSpanner_ShortRepresentation_Subqueries

+ (Class)classForAdditionalProperties {
  return [NSNumber class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Statement
//

@implementation GTLRSpanner_Statement
@dynamic params, paramTypes, sql;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Statement_Params
//

@implementation GTLRSpanner_Statement_Params

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Statement_ParamTypes
//

@implementation GTLRSpanner_Statement_ParamTypes

+ (Class)classForAdditionalProperties {
  return [GTLRSpanner_Type class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Status
//

@implementation GTLRSpanner_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRSpanner_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Status_Details_Item
//

@implementation GTLRSpanner_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_StructType
//

@implementation GTLRSpanner_StructType
@dynamic fields;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"fields" : [GTLRSpanner_Field class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_TestIamPermissionsRequest
//

@implementation GTLRSpanner_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_TestIamPermissionsResponse
//

@implementation GTLRSpanner_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Transaction
//

@implementation GTLRSpanner_Transaction
@dynamic identifier, readTimestamp;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_TransactionOptions
//

@implementation GTLRSpanner_TransactionOptions
@dynamic partitionedDml, readOnly, readWrite;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_TransactionSelector
//

@implementation GTLRSpanner_TransactionSelector
@dynamic begin, identifier, singleUse;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Type
//

@implementation GTLRSpanner_Type
@dynamic arrayElementType, code, structType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_UpdateDatabaseDdlMetadata
//

@implementation GTLRSpanner_UpdateDatabaseDdlMetadata
@dynamic commitTimestamps, database, statements;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"commitTimestamps" : [GTLRDateTime class],
    @"statements" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_UpdateDatabaseDdlRequest
//

@implementation GTLRSpanner_UpdateDatabaseDdlRequest
@dynamic operationId, statements;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"statements" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_UpdateInstanceMetadata
//

@implementation GTLRSpanner_UpdateInstanceMetadata
@dynamic cancelTime, endTime, instance, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_UpdateInstanceRequest
//

@implementation GTLRSpanner_UpdateInstanceRequest
@dynamic fieldMask, instance;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpanner_Write
//

@implementation GTLRSpanner_Write
@dynamic columns, table, values;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"columns" : [NSString class],
    @"values" : [NSObject class]
  };
  return map;
}

@end