//
//  Tile.m
//  Pirate Adventure
//
//  Created by sandric on 24.09.14.
//  Copyright (c) 2014 sandric. All rights reserved.
//

#import "Tile.h"

@implementation Tile

-(id)initWithStory:(NSString *)story backgroundImageName:(NSString *)backgroundImageName point:(CGPoint)point {
    
    self = [super init];
    
    if(self) {
        
        self.story = story;
        self.backgroundImageName = backgroundImageName;
        self.point = point;
    }
    
    return self;
}

- (NSArray *)availableDirections {
    NSMutableArray *directions = [[NSMutableArray alloc] init];
    if(self.point.x > 1) [directions addObject:[NSNumber numberWithInt:NORTH]];
    if(self.point.x < 3) [directions addObject:[NSNumber numberWithInt:SOUTH]];
    if(self.point.y > 1) [directions addObject:[NSNumber numberWithInt:WEST]];
    if(self.point.y < 4) [directions addObject:[NSNumber numberWithInt:EAST]];
    
    return directions;
}

@end
