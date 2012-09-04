//
// nod - Copyright 2012 Three Rings Design

#import "BehaviorTask.h"

#define ENUM_STRING(val) case val: return @#val;

@interface BehaviorTask (protected)

/// Subclasses should override this function to update the behavior logic.
- (BehaviorStatus)update:(float)dt;

- (NSString*)description;
- (NSString*)statusString;

@end