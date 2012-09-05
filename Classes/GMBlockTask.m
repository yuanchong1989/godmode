//
// godmode - Copyright 2012 Three Rings Design

#import "GMBlockTask.h"

@implementation GMBlockTask

- (id)initWithName:(NSString*)name block:(GMTaskBlock)block {
    if ((self = [super initWithName:name])) {
        _block = [block copy];
    }
    return self;
}

- (id)initWithBlock:(GMTaskBlock)block {
    return [self initWithName:nil block:block];
}

- (GMStatus)update:(float)dt {
    return _block(dt);
}

@end
