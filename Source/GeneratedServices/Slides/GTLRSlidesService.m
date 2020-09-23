// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Slides API (slides/v1)
// Description:
//   Reads and writes Google Slides presentations.
// Documentation:
//   https://developers.google.com/slides/

#import "GTLRSlides.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeSlidesDrive                 = @"https://www.googleapis.com/auth/drive";
NSString * const kGTLRAuthScopeSlidesDriveFile             = @"https://www.googleapis.com/auth/drive.file";
NSString * const kGTLRAuthScopeSlidesDriveReadonly         = @"https://www.googleapis.com/auth/drive.readonly";
NSString * const kGTLRAuthScopeSlidesPresentations         = @"https://www.googleapis.com/auth/presentations";
NSString * const kGTLRAuthScopeSlidesPresentationsReadonly = @"https://www.googleapis.com/auth/presentations.readonly";
NSString * const kGTLRAuthScopeSlidesSpreadsheets          = @"https://www.googleapis.com/auth/spreadsheets";
NSString * const kGTLRAuthScopeSlidesSpreadsheetsReadonly  = @"https://www.googleapis.com/auth/spreadsheets.readonly";

// ----------------------------------------------------------------------------
//   GTLRSlidesService
//

@implementation GTLRSlidesService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://slides.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
