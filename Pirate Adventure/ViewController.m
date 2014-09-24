//
//  ViewController.m
//  Pirate Adventure
//
//  Created by sandric on 23.09.14.
//  Copyright (c) 2014 sandric. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.map = [[Map alloc] init];
    
    self.map.currentTile = self.map.tiles.firstObject;
    
    NSLog(@"%@", self.map.currentTile);
    
    [self updateViewWithCurrentTile];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)navigateNorth:(id)sender {
    [self triggerNavigationToDirection:NORTH];
}

- (IBAction)navigateEast:(id)sender {
    [self triggerNavigationToDirection:EAST];
}

- (IBAction)navigateSouth:(id)sender {
    [self triggerNavigationToDirection:SOUTH];
}

- (IBAction)navigateWest:(id)sender {
    [self triggerNavigationToDirection:WEST];
}


- (void)triggerNavigationToDirection:(NSUInteger)direction {
    [self.map navigateWithDirection:direction];
    [self updateViewWithCurrentTile];
}


- (void)updateViewWithCurrentTile {
    
    self.view.layer.contents = (id)[UIImage imageNamed:self.map.currentTile.backgroundImageName].CGImage;

    self.storyTextField.text = self.map.currentTile.story;
    
    NSArray *availableDirections = [self.map.currentTile availableDirections];
    
    if ([availableDirections containsObject:[NSNumber numberWithInteger:NORTH]])
        self.navigateNorthButton.hidden = NO;
    else
        self.navigateNorthButton.hidden = YES;
    if ([availableDirections containsObject:[NSNumber numberWithInteger:EAST]])
        self.navigateEastButton.hidden = NO;
    else
        self.navigateEastButton.hidden = YES;
    if ([availableDirections containsObject:[NSNumber numberWithInteger:SOUTH]])
        self.navigateSouthButton.hidden = NO;
    else
        self.navigateSouthButton.hidden = YES;
    if ([availableDirections containsObject:[NSNumber numberWithInteger:WEST]])
        self.navigateWestButton.hidden = NO;
    else
        self.navigateWestButton.hidden = YES;

}

@end
