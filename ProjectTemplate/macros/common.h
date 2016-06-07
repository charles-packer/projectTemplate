//
//  macros.h
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import <Foundation/Foundation.h>


#define IS_IPAD   (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

//invalidate and nil timer in one line
#define INVALIDATE_TIMER(t) [t invalidate]; t = nil;

//more detailed logging
#ifdef DEBUG
#define HS_log( s, ... ) NSLog( @"<%@:%d> %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__,  [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
    #define HS_log( s, ... )

// Profiling Macros
#define START_TIME(tag) NSDate *startTime_ ## tag = [NSDate date];NSLog(@"start           " #tag);
#define CHECK_TIME(tag) NSLog(@"elapsed %0.5f " #tag, [[NSDate date] timeIntervalSinceDate:startTime_ ## tag]);


// Various Cocoa struct log macros
// NSRange
#define LOG_RANGE(range)    (NSLog(@"" #range @" loc:%u len:%u", range.location, range.length ));
// CGPoint
#define LOG_POINT(point)    (NSLog(@"" #point @" x:%f y:%f", point.x, point.y ));
// CGSize
#define LOG_SIZE(size)      (NSLog(@"" #size @" width:%f height:%f", size.width, size.height ));
// CGRect
#define LOG_RECT(rect)      (NSLog(@"" #rect @" x:%f y:%f w:%f h:%f", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height ));
// CLLocationCoordinate2D
#define LOG_COORD2D(coord)  (NSLog(@"" #coord @" lat,lon: %+.6f,%+.6f",coord.latitude, coord.longitude ));

#endif




