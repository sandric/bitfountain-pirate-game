//
//  Map.m
//  Pirate Adventure
//
//  Created by sandric on 24.09.14.
//  Copyright (c) 2014 sandric. All rights reserved.
//

#import "Map.h"

@implementation Map

-(NSArray *) initializeTiles {
    
    return self.tiles = [NSArray arrayWithObjects:

                  [[Tile alloc]
                      initWithStory:@"some story 1"
                      backgroundImageName:@"PirateStart.jpg"
                      point:CGPointMake(1, 1)],

                  [[Tile alloc]
                      initWithStory:@"some story 2"
                      backgroundImageName:@"PirateBlacksmith.jpeg"
                      point:CGPointMake(1, 2)],

                  [[Tile alloc]
                      initWithStory:@"some story 3"
                      backgroundImageName:@"PirateBoss.jpeg"
                      point:CGPointMake(1, 3)],

                  [[Tile alloc]
                      initWithStory:@"some story 4"
                      backgroundImageName:@"PirateFriendlyDock.jpg"
                      point:CGPointMake(1, 4)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 5"
                      backgroundImageName:@"PirateOctopusAttack.jpg"
                      point:CGPointMake(2, 1)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 6"
                      backgroundImageName:@"PirateParrot.jpg"
                      point:CGPointMake(2, 2)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 7"
                      backgroundImageName:@"PiratePlank.jpg"
                      point:CGPointMake(2, 3)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 8"
                      backgroundImageName:@"PirateShipBattle.jpeg"
                      point:CGPointMake(2, 4)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 9"
                      backgroundImageName:@"PirateAttack.jpg"
                      point:CGPointMake(3, 1)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 10"
                      backgroundImageName:@"PirateTreasure.jpeg"
                      point:CGPointMake(3, 2)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 11"
                      backgroundImageName:@"PirateTreasurer2.jpeg"
                      point:CGPointMake(3, 3)],
    
                  [[Tile alloc]
                      initWithStory:@"some story 12"
                      backgroundImageName:@"PirateWeapons.jpeg"
                      point:CGPointMake(3, 4)],
                  
                  nil];
}

-(id)init {
    self = [super init];
    if (self) {
        [self initializeTiles];
    }
    return self;
}

-(Tile *)navigateWithDirection:(int)direction {
    CGPoint new_point;
    switch (direction) {
        case NORTH:
            new_point = CGPointMake(self.currentTile.point.x - 1, self.currentTile.point.y);
            break;
        case EAST:
            new_point = CGPointMake(self.currentTile.point.x, self.currentTile.point.y + 1);
            break;
        case SOUTH:
            new_point = CGPointMake(self.currentTile.point.x + 1, self.currentTile.point.y);
            break;
        case WEST:
            new_point = CGPointMake(self.currentTile.point.x, self.currentTile.point.y - 1);
            break;
        default:
            break;
    }
    
    NSUInteger newTileIndex = [self.tiles indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        if ([(Tile *)obj point].x == new_point.x && [(Tile *)obj point].y == new_point.y) {
            *stop = YES;
            return YES;
        }
        return NO;
    }];
    
    if (newTileIndex != NSNotFound) {
        self.currentTile = [self.tiles objectAtIndex:newTileIndex];
    } else {
        NSLog(@"No such tile, fuck off");
    }
    
    return self.currentTile;
}

@end
