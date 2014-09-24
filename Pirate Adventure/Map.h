//
//  Map.h
//  Pirate Adventure
//
//  Created by sandric on 24.09.14.
//  Copyright (c) 2014 sandric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"

@interface Map : NSObject

@property (nonatomic, strong) Tile *currentTile;
@property (nonatomic, strong) NSArray *tiles;

-(NSArray *)initializeTiles;
-(Tile *)navigateWithDirection: (int) direction;



@end
