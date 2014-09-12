//
//  illaViewController.m
//  secpwd
//
//  Created by git on 14-9-10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "illaViewController.h"

@implementation illaViewController

- (id)init {
    self = [super init];
    _appDelegate = [illaAppDelegate sharedAppDelegate];
    [_appDelegate.console writeConsole:@"this is a test"];
    return false;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
