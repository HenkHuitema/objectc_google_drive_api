// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Dataflow API (dataflow/v1b3)
// Description:
//   Manages Google Cloud Dataflow projects on Google Cloud Platform.
// Documentation:
//   https://cloud.google.com/dataflow

#import "GTLRDataflow.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeDataflowCloudPlatform   = @"https://www.googleapis.com/auth/cloud-platform";
NSString * const kGTLRAuthScopeDataflowCompute         = @"https://www.googleapis.com/auth/compute";
NSString * const kGTLRAuthScopeDataflowComputeReadonly = @"https://www.googleapis.com/auth/compute.readonly";
NSString * const kGTLRAuthScopeDataflowUserinfoEmail   = @"https://www.googleapis.com/auth/userinfo.email";

// ----------------------------------------------------------------------------
//   GTLRDataflowService
//

@implementation GTLRDataflowService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://dataflow.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
