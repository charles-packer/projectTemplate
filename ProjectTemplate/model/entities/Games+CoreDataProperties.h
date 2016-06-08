//
//  Games+CoreDataProperties.h
//  
//
//  Created by charles_packer on 6/7/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Games.h"

NS_ASSUME_NONNULL_BEGIN

@interface Games (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *lineup2;
@property (nullable, nonatomic, retain) NSString *forecast;
@property (nullable, nonatomic, retain) NSString *gameTIme;
@property (nullable, nonatomic, retain) NSString *lineup1;
@property (nullable, nonatomic, retain) NSString *team1;
@property (nullable, nonatomic, retain) NSString *team2;
@property (nullable, nonatomic, retain) NSString *gameId;

@end

NS_ASSUME_NONNULL_END
