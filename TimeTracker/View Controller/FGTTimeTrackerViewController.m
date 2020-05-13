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

@interface FGTTimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate>

//Add  Outlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *rateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeHoursTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FGTTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Set as delegate
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    

}

- (FGTTimedTaskController *)timedTaskController {
    if(!_timedTaskController){
    //instance of the model controller
    _timedTaskController = [[FGTTimedTaskController alloc] init];
    }
    return _timedTaskController;
}

// Mark: - Actions
- (IBAction)logTimeButtonPressed:(UIButton *)sender {
    
    NSString *client = self.clientNameTextField.text;
    NSString *summary = self.summaryTextField.text;
    double rate = [self.rateTextField.text doubleValue];
    double hours = [self.timeHoursTextField.text doubleValue];
    
    //access the createTimedTaskWith method in timedTaskController
    [self.timedTaskController createTimedTaskWith:client summary:summary rate:rate hours:hours];
    
    //Reload table
    [self.tableView reloadData];

    [self clearFilds];
    
}

- (void)clearFilds{
    self.clientNameTextField.text = @"";
    self.summaryTextField.text = @"";
    self.rateTextField.text = @"";
    self.timeHoursTextField.text = @"";
}

// Mark: -Data source delegate Methods

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
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.total];
    
    return cell;
}

@end
