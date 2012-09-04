//
// nod - Copyright 2012 Three Rings Design

#import "TimerAction.h"
#import "StatefulBehaviorTask+Protected.h"

@implementation TimerAction

- (id)initWithName:(NSString*)name time:(float)time {
    if ((self = [super initWithName:name])) {
        _totalTime = time;
    }
    return self;
}

- (id)initWithTime:(float)time {
    return [self initWithName:nil time:time];
}

- (void)reset {
    _elapsedTime = 0;
}

- (BehaviorStatus)update:(float)dt {
    _elapsedTime += dt;
    return (_elapsedTime >= _totalTime ? BehaviorSuccess : BehaviorRunning);
}

@end
