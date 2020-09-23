// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Identity API (cloudidentity/v1)
// Description:
//   API for provisioning and managing identity resources.
// Documentation:
//   https://cloud.google.com/identity/

#import "GTLRCloudIdentityObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes.ownershipPrivilege
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DeviceAdministrator = @"DEVICE_ADMINISTRATOR";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_DeviceOwner = @"DEVICE_OWNER";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_OwnershipPrivilegeUnspecified = @"OWNERSHIP_PRIVILEGE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes_OwnershipPrivilege_ProfileOwner = @"PROFILE_OWNER";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState.complianceState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_ComplianceStateUnspecified = @"COMPLIANCE_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_Compliant = @"COMPLIANT";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_ComplianceState_NonCompliant = @"NON_COMPLIANT";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState.healthScore
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Good = @"GOOD";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_HealthScoreUnspecified = @"HEALTH_SCORE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Neutral = @"NEUTRAL";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_Poor = @"POOR";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VeryGood = @"VERY_GOOD";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_HealthScore_VeryPoor = @"VERY_POOR";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState.managed
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_Managed_Managed = @"MANAGED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_Managed_ManagedStateUnspecified = @"MANAGED_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_Managed_Unmanaged = @"UNMANAGED";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState.ownerType
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OwnerTypeCustomer = @"OWNER_TYPE_CUSTOMER";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OwnerTypePartner = @"OWNER_TYPE_PARTNER";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_OwnerType_OwnerTypeUnspecified = @"OWNER_TYPE_UNSPECIFIED";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device.compromisedState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Compromised = @"COMPROMISED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_CompromisedState_CompromisedStateUnspecified = @"COMPROMISED_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_CompromisedState_Uncompromised = @"UNCOMPROMISED";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device.deviceType
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_Android = @"ANDROID";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_ChromeOs = @"CHROME_OS";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_DeviceTypeUnspecified = @"DEVICE_TYPE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_GoogleSync = @"GOOGLE_SYNC";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_Ios = @"IOS";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_Linux = @"LINUX";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_MacOs = @"MAC_OS";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_DeviceType_Windows = @"WINDOWS";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device.encryptionState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_EncryptionState_Encrypted = @"ENCRYPTED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_EncryptionState_EncryptionStateUnspecified = @"ENCRYPTION_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_EncryptionState_NotEncrypted = @"NOT_ENCRYPTED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_EncryptionState_UnsupportedByDevice = @"UNSUPPORTED_BY_DEVICE";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device.managementState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_Approved = @"APPROVED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_Blocked = @"BLOCKED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_ManagementStateUnspecified = @"MANAGEMENT_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_Pending = @"PENDING";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_Unprovisioned = @"UNPROVISIONED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiped = @"WIPED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_ManagementState_Wiping = @"WIPING";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device.ownerType
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_OwnerType_Byod = @"BYOD";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_OwnerType_Company = @"COMPANY";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device_OwnerType_DeviceOwnershipUnspecified = @"DEVICE_OWNERSHIP_UNSPECIFIED";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser.compromisedState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_Compromised = @"COMPROMISED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_CompromisedStateUnspecified = @"COMPROMISED_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_CompromisedState_NotCompromised = @"NOT_COMPROMISED";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser.managementState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Approved = @"APPROVED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Blocked = @"BLOCKED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_ManagementStateUnspecified = @"MANAGEMENT_STATE_UNSPECIFIED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_PendingApproval = @"PENDING_APPROVAL";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Unenrolled = @"UNENROLLED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiped = @"WIPED";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_ManagementState_Wiping = @"WIPING";

// GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser.passwordState
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PasswordNotSet = @"PASSWORD_NOT_SET";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PasswordSet = @"PASSWORD_SET";
NSString * const kGTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser_PasswordState_PasswordStateUnspecified = @"PASSWORD_STATE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_EntityKey
//

@implementation GTLRCloudIdentity_EntityKey
@dynamic identifier, namespaceProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"identifier" : @"id",
    @"namespaceProperty" : @"namespace"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1AndroidAttributes
@dynamic enabledUnknownSources, ownerProfileAccount, ownershipPrivilege,
         supportsWorkProfile;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
@dynamic deviceUser;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
@dynamic deviceUser;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
@dynamic device;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
@dynamic deviceUser;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState
@dynamic assetTags, complianceState, createTime, customId, ETag, healthScore,
         keyValuePairs, lastUpdateTime, managed, name, ownerType, scoreReason;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"assetTags" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1ClientState_KeyValuePairs

+ (Class)classForAdditionalProperties {
  return [GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CustomAttributeValue class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CustomAttributeValue
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1CustomAttributeValue
@dynamic boolValue, numberValue, stringValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1Device
@dynamic androidSpecificAttributes, assetTag, basebandVersion,
         bootloaderVersion, brand, buildNumber, compromisedState, createTime,
         deviceType, enabledDeveloperOptions, enabledUsbDebugging,
         encryptionState, imei, kernelVersion, lastSyncTime, managementState,
         manufacturer, meid, model, name, networkOperator, osVersion,
         otherAccounts, ownerType, releaseVersion, securityPatchTime,
         serialNumber, wifiMacAddresses;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"otherAccounts" : [NSString class],
    @"wifiMacAddresses" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1DeviceUser
@dynamic compromisedState, createTime, firstSyncTime, languageCode,
         lastSyncTime, managementState, name, passwordState, userAgent,
         userEmail;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
@dynamic device;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
//

@implementation GTLRCloudIdentity_GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
@dynamic deviceUser;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Group
//

@implementation GTLRCloudIdentity_Group
@dynamic createTime, descriptionProperty, displayName, groupKey, labels, name,
         parent, updateTime;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Group_Labels
//

@implementation GTLRCloudIdentity_Group_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_ListGroupsResponse
//

@implementation GTLRCloudIdentity_ListGroupsResponse
@dynamic groups, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"groups" : [GTLRCloudIdentity_Group class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"groups";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_ListMembershipsResponse
//

@implementation GTLRCloudIdentity_ListMembershipsResponse
@dynamic memberships, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"memberships" : [GTLRCloudIdentity_Membership class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"memberships";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_LookupGroupNameResponse
//

@implementation GTLRCloudIdentity_LookupGroupNameResponse
@dynamic name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_LookupMembershipNameResponse
//

@implementation GTLRCloudIdentity_LookupMembershipNameResponse
@dynamic name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Membership
//

@implementation GTLRCloudIdentity_Membership
@dynamic createTime, name, preferredMemberKey, roles, updateTime;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"roles" : [GTLRCloudIdentity_MembershipRole class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_MembershipRole
//

@implementation GTLRCloudIdentity_MembershipRole
@dynamic name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Operation
//

@implementation GTLRCloudIdentity_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Operation_Metadata
//

@implementation GTLRCloudIdentity_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Operation_Response
//

@implementation GTLRCloudIdentity_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_SearchGroupsResponse
//

@implementation GTLRCloudIdentity_SearchGroupsResponse
@dynamic groups, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"groups" : [GTLRCloudIdentity_Group class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"groups";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Status
//

@implementation GTLRCloudIdentity_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRCloudIdentity_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudIdentity_Status_Details_Item
//

@implementation GTLRCloudIdentity_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end
