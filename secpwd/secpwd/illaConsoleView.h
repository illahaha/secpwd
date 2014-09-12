//
//  illaConsoleView.h
//  secpwd
//
//  Created by git on 14-9-10.
//  Copyright (c) 2014年 git. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface illaConsoleView : UIViewController <UITextViewDelegate>{
    UITextView *_textView;
    UITextView *_commondView;
    CGFloat _currentFontSize;
}

-(void)writeConsole:(NSString *)text;

@end
