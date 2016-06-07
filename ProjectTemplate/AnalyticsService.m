//
//  AnalyticsService.m
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import "AnalyticsService.h"

@implementation AnalyticsService

+ (instancetype)instance
{
    static AnalyticsService *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AnalyticsService alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}
@end
