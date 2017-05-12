//
//  ViewController.m
//  SOHFile
//
//  Created by charles on 2017/5/12.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (IBAction)showAction:(id)sender {
    [[NSTask launchedTaskWithLaunchPath:@"/bin/sh"
                              arguments:@[@"-c", @"defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder"]]
     waitUntilExit];
}

- (IBAction)hideAction:(id)sender {
    [[NSTask launchedTaskWithLaunchPath:@"/bin/sh"
                              arguments:@[@"-c", @"defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"]]
     waitUntilExit];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
