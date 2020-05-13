//
//  FGTTimedTaskController.h
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FGTTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimedTaskController : NSObject

//Properties
@property (readonly, nonatomic) NSArray<FGTTimedTask *> *timeTasks;

//Methods
- (void)createTimedTaskWith:(NSString *)client summary:(NSString *)summary rate:(double)rate hours:(double)hours;

@end

NS_ASSUME_NONNULL_END
