//
//  FGTTimeTrackerViewController.m
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "FGTTimeTrackerViewController.h"
#import "FGTTimedTask.h"
#import "FGTTimedTaskController.h"

@interface FGTTimeTrackerViewController ()
//Properties
@property FGTTimedTaskController* timedTaskController;

//Add  Outlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *rateTextField;
@property (strong, nonatomic) IBOutlet UITextField *TimeHoursTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end



@implementation FGTTimeTrackerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //Set as delegate
    self.tableView.dataSource = self;
    
    //instance of the model controller
    _timedTaskController = [[FGTTimedTaskController alloc] init];
}



//Add Actions
- (IBAction)logTimeButtonPressed:(UIButton *)sender {
    
    
}

//Data source delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timeTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //1.Create cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"LogCell" forIndexPath:indexPath];
    
    //2.Get data
    FGTTimedTask *task = self.timedTaskController.timeTasks[indexPath.row];
    
    //3.Pass data to labels
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = task.summary;
    
    return cell;
}



@end
