//
//  FGTTimedTask.h
//  TimeTracker
//
//  Created by FGT MAC on 5/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double rate;
@property (nonatomic) double hours;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                          rate:(double)rate
                         hours:(double)hours;



@end

NS_ASSUME_NONNULL_END
