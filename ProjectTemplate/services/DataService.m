//
//  DataService.m
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import "DataService.h"

@implementation DataService

+ (instancetype)instance
{
    static DataService *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[DataService alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}


-(void)getUserData
{
    
}

@end
