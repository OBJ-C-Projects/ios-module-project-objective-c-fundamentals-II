//
//  FGTTimedTask.m
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "FGTTimedTask.h"

@implementation FGTTimedTask


- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                          rate:(NSNumber *)rate
                         hours:(NSNumber *)hours{
    self = [super init];
    
    if(self){
        _client = client;
        _summary = summary;
        _rate = rate;
        _hours = hours;
    }
    
    return self;
}



@end
