//
//  illaAppDelegate.h
//  secpwd
//
//  Created by git on 14-9-10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "illaConsoleView.h"

@interface illaAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) illaConsoleView * console;

+ (illaAppDelegate *)sharedAppDelegate;

@end
