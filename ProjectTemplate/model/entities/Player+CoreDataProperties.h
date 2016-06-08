//
//  Player+CoreDataProperties.h
//  
//
//  Created by charles_packer on 6/7/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Player.h"

NS_ASSUME_NONNULL_BEGIN

@interface Player (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *fullName;
@property (nullable, nonatomic, retain) NSManagedObject *playerDetails;

@end

NS_ASSUME_NONNULL_END
