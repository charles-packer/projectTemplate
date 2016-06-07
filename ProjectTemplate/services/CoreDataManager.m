//
//  CoreDataManager.m
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import "CoreDataManager.h"

@interface CoreDataManager()
@property (strong) NSManagedObjectContext* defaultContext;
@end


@implementation CoreDataManager

+ (instancetype)instance
{
    static CoreDataManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CoreDataManager alloc] init];
        
    });
    return sharedInstance;
}

-(void)startService
{
    _defaultContext = [NSManagedObjectContext MR_defaultContext];
}

@end
