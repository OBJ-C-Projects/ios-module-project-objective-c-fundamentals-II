//
//  FGTTimeTrackerViewController.h
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FGTTimedTaskController;

NS_ASSUME_NONNULL_BEGIN

//Adopt <UITableViewDataSource> protocol
@interface FGTTimeTrackerViewController : UIViewController 

@property (nonatomic) FGTTimedTaskController* timedTaskController;

@end

NS_ASSUME_NONNULL_END
