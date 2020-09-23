// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Firebase Hosting API (firebasehosting/v1)
// Description:
//   The Firebase Hosting REST API enables programmatic and customizable
//   deployments to your Firebase-hosted sites. Use this REST API to deploy new
//   or updated hosting configurations and content files.
// Documentation:
//   https://firebase.google.com/docs/hosting/

#import "GTLRFirebaseHostingObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_CancelOperationRequest
//

@implementation GTLRFirebaseHosting_CancelOperationRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_Empty
//

@implementation GTLRFirebaseHosting_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_ListOperationsResponse
//

@implementation GTLRFirebaseHosting_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRFirebaseHosting_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_Operation
//

@implementation GTLRFirebaseHosting_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_Operation_Metadata
//

@implementation GTLRFirebaseHosting_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_Operation_Response
//

@implementation GTLRFirebaseHosting_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_Status
//

@implementation GTLRFirebaseHosting_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRFirebaseHosting_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFirebaseHosting_Status_Details_Item
//

@implementation GTLRFirebaseHosting_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end
