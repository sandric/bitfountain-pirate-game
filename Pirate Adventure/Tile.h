//
//  Tile.h
//  Pirate Adventure
//
//  Created by sandric on 24.09.14.
//  Copyright (c) 2014 sandric. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, Direction){
    NORTH,
    EAST,
    SOUTH,
    WEST
};

@interface Tile : NSObject

@property (nonatomic, strong) NSString *story;
@property (nonatomic, strong) NSString *backgroundImageName;
@property (nonatomic) CGPoint point;

- (id)initWithStory: (NSString *) story backgroundImageName:(NSString *) backgroundImageName point:(CGPoint) point;
- (NSArray *)availableDirections;


@end
