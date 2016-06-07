//
//  PlayerDetails+CoreDataProperties.h
//  
//
//  Created by charles_packer on 6/7/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "PlayerDetails.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayerDetails (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *projected;
@property (nullable, nonatomic, retain) NSString *team;
@property (nullable, nonatomic, retain) NSString *opponent;
@property (nullable, nonatomic, retain) Player *player;

@end

NS_ASSUME_NONNULL_END
