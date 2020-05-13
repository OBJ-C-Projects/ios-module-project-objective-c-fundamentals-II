//
//  FGTTimedTaskController.m
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "FGTTimedTaskController.h"
//import to create a new instace of the object and append to array
#import "FGTTimedTask.h"

@implementation FGTTimedTaskController

- (instancetype)initWithTimeTasks:(NSMutableArray *)timeTasks {
    self = [super init];
    if(self){
        _timeTasks = timeTasks;
    };
    
    return self;
}

- (void)createTimedTaskWith:(NSString *)client summary:(NSString *)summary rate:(double)rate hours:(double)hours {
    //1.Create a new instace
    FGTTimedTask *TimedTask = [[FGTTimedTask alloc] initWithClient:client summary:summary rate:rate hours:hours];
    //2. Add to array
    [_timeTasks addObject:TimedTask];
}


@end
