//
//  illaConsoleView.m
//  secpwd
//
//  Created by git on 14-9-10.
//  Copyright (c) 2014年 git. All rights reserved.
//

#import "illaConsoleView.h"

static CGFloat const consoleDefaultFontSize = 17;
static CGFloat const consoleMinFontSize = 10;
static CGFloat const consoleMaxFontSize = 25;

static NSString * const consoleDefaultFont = @"Courier-Bold";

@implementation illaConsoleView

-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

-(instancetype)init {
    self = [super init];
    [self generateTextView];
    return self;
}

-(void)generateTextView {
    _textView = [[UITextView alloc] initWithFrame:self.view.frame];
    _textView.backgroundColor = [UIColor blackColor];
    _textView.autoresizingMask = UIViewAutoresizingFlexibleWidth + UIViewAutoresizingFlexibleHeight;
    _textView.editable = NO;
    _textView.font = [UIFont fontWithName:consoleDefaultFont size:_currentFontSize];
    _textView.textColor = [UIColor whiteColor];
    [self.view addSubview:_textView];
}


@end
