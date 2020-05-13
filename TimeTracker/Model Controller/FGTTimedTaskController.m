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


@interface FGTTimedTaskController ()

@property (nonatomic) NSMutableArray<FGTTimedTask *> *internalTimeTasks;

@end

@implementation FGTTimedTaskController

- (instancetype)init  {
    self = [super init];
    if(self){
        _internalTimeTasks = [[NSMutableArray alloc] init];
    };
    
    return self;
}

//Computed property to set the timeTasks array = internalTimeTasks
- (NSArray<FGTTimedTask*> *)timeTasks {
    return [_internalTimeTasks copy];
}

- (void)createTimedTaskWith:(NSString *)client summary:(NSString *)summary rate:(double)rate hours:(double)hours {
    //1.Create a new instace
    FGTTimedTask *timedTask = [[FGTTimedTask alloc] initWithClient:client summary:summary rate:rate hours:hours];
    //2. Add to array
    [self.internalTimeTasks addObject:timedTask];
}


@end
