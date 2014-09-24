//
//  ViewController.h
//  Pirate Adventure
//
//  Created by sandric on 23.09.14.
//  Copyright (c) 2014 sandric. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Map.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *storyTextField;

@property (strong, nonatomic) IBOutlet UIButton *navigateNorthButton;
@property (strong, nonatomic) IBOutlet UIButton *navigateEastButton;
@property (strong, nonatomic) IBOutlet UIButton *navigateSouthButton;
@property (strong, nonatomic) IBOutlet UIButton *navigateWestButton;


- (IBAction)navigateNorth:(id)sender;
- (IBAction)navigateEast:(id)sender;
- (IBAction)navigateSouth:(id)sender;
- (IBAction)navigateWest:(id)sender;

@property (strong, nonatomic) Map *map;

- (void)updateViewWithCurrentTile;
- (void)triggerNavigationToDirection: (NSUInteger) direction;

@end

