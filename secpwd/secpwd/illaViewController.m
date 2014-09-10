//
//  illaViewController.m
//  secpwd
//
//  Created by git on 14-9-10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "illaViewController.h"

static CGFloat const consoleDefaultFontSize = 17;
static CGFloat const consoleMinFontSize = 10;
static CGFloat const consoleMaxFontSize = 25;

static NSString * const consoleDefaultFont = @"Courier-Bold";

@interface illaViewController ()

@end

@implementation illaViewController

-(instancetype)init {
    self = [super init];
    [self generateTextView];
    return self;
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

-(void)generateTextView {
    
}

@end
