//
//  CoreDataManager.h
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataManager : NSObject

+ (CoreDataManager*)instance;
-(void)startService;
@end
