//
//  ImageService.m
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import "ImageService.h"

@implementation ImageService
+ (instancetype)instance
{
    static ImageService *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ImageService alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}
@end
