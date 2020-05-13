//
//  FGTTimedTask.m
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "FGTTimedTask.h"

@implementation FGTTimedTask

//intance of total to then create a getter
@synthesize total = _total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                          rate:(double)rate
                         hours:(double)hours{
    self = [super init];
    
    if(self){
        _client = client;
        _summary = summary;
        _rate = rate;
        _hours = hours;
    }
    
    return self;
}

//Create getter for read only total property
-(double)total {
    double totalEquation = _rate * _hours;
    return totalEquation;
};


@end
