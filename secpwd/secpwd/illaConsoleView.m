//
//  illaConsoleView.m
//  secpwd
//
//  Created by git on 14-9-10.
//  Copyright (c) 2014年 git. All rights reserved.
//

#import "illaConsoleView.h"

static CGFloat const consoleDefaultFontSize = 17;
static NSString * const consoleDefaultFont = @"Courier-Bold";

static CGFloat const commandHeight = 90;
static CGFloat const commandPanding = 5;

@implementation illaConsoleView

-(instancetype)init {
    self = [super init];
    [self generateTextView];
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    /* 键盘处理 */
  
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hidenKeyboard)];
    gesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:gesture];
    
}

-(void)hidenKeyboard
{
    [_commondView resignFirstResponder];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]){
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

-(void)generateTextView {
    CGRect rect = self.view.frame;
    rect.size.height = rect.size.height - commandHeight - commandPanding;
     _currentFontSize = consoleDefaultFontSize;
    _textView = [[UITextView alloc] initWithFrame:rect];
    _textView.backgroundColor = [UIColor blackColor];
    _textView.autoresizingMask = UIViewAutoresizingFlexibleWidth + UIViewAutoresizingFlexibleHeight;
    _textView.editable = NO;
    _textView.font = [UIFont fontWithName:consoleDefaultFont size:_currentFontSize];
    _textView.textColor = [UIColor whiteColor];
    _textView.userInteractionEnabled = NO;
    [self.view addSubview:_textView];
    
    rect.origin.y = rect.size.height - commandHeight + commandPanding;
    rect.size.height = commandHeight;
    _commondView = [[UITextView alloc] initWithFrame:rect];
    _commondView.backgroundColor = [UIColor blackColor];
    _commondView.autoresizingMask = UIViewAutoresizingFlexibleWidth + UIViewAutoresizingFlexibleHeight;
    _commondView.editable = YES;
    _commondView.font = [UIFont fontWithName:consoleDefaultFont size:_currentFontSize];
    _commondView.textColor = [UIColor greenColor];
    
    _commondView.text = @"command line";
    [self.view addSubview:_commondView];
     _commondView.delegate = self;
}

-(void)scrollToBottom{
    [_textView scrollRangeToVisible:NSMakeRange(_textView.text.length, 0)];
    [_textView setScrollEnabled:NO];
    [_textView setScrollEnabled:YES];
}


-(void)writeConsole:(NSString *)text{
    dispatch_async(dispatch_get_main_queue(), ^{
        _textView.text = [_textView.text stringByAppendingString:text];
        [self scrollToBottom];
    });
}



@end
