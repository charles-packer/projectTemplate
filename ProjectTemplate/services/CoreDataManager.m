//
//  CoreDataManager.m
//  ProjectTemplate
//
//  Created by charles_packer on 6/7/16.
//  Copyright © 2016 Hot Streak Games. All rights reserved.
//

#import "CoreDataManager.h"
#import "Games.h"

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
    [MagicalRecord setupAutoMigratingCoreDataStack];
    _defaultContext = [NSManagedObjectContext MR_defaultContext];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUpdateKey:) name:NSManagedObjectContextObjectsDidChangeNotification object:_defaultContext];

}

-(void)onUpdateKey:(NSNotification *)note
{
    NSSet *updatedObjects = [[note userInfo] objectForKey:NSUpdatedObjectsKey];
    NSSet *deletedObjects = [[note userInfo] objectForKey:NSDeletedObjectsKey];
    NSSet *insertedObjects = [[note userInfo] objectForKey:NSInsertedObjectsKey];
    NSSet *refreshedObjects = [[note userInfo] objectForKey:NSRefreshedObjectsKey];

    NSLog(@"updated %@", updatedObjects);
   // NSLog(@"inserted %@", insertedObjects);

}

-(void)updateGames:(NSArray*)gamesArray
{
    
    
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext * _Nonnull localContext) {
        
        
        for (NSDictionary* g in gamesArray)
        {
            NSString* gameId = [g objectForKey:@"pitcher"];
            NSString* forecast = [g objectForKey:@"forecast"];
            NSString* gameTime = [g objectForKey:@"gameTime"];
            NSString* lineup = [g objectForKey:@"lineup"];
            NSString* team = [g objectForKey:@"teamName"];

            Games * game = [Games MR_findFirstByAttribute:@"gameId" withValue:gameId inContext:localContext];
            
            if (!game)
            {
                Games *newGame = [Games MR_createEntityInContext:localContext];
                newGame.gameId = gameId;
                newGame.forecast = forecast;
                newGame.gameTIme = gameTime;
            } else {
                game.gameId = gameId;
                game.forecast = forecast;
                game.gameTIme = gameTime;
                game.team1 = team;

            }

        }
        
    } completion:^(BOOL contextDidSave, NSError * _Nullable error) {
        
    }];

}

@end
