// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Safe Browsing API (safebrowsing/v4)
// Description:
//   Enables client applications to check web resources (most commonly URLs)
//   against Google-generated lists of unsafe web resources. The Safe Browsing
//   APIs are for non-commercial use only. If you need to use APIs to detect
//   malicious URLs for commercial purposes – meaning “for sale or
//   revenue-generating purposes” – please refer to the Web Risk API.
// Documentation:
//   https://developers.google.com/safe-browsing/

#import "GTLRSafeBrowsing.h"

@implementation GTLRSafeBrowsingService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://safebrowsing.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
