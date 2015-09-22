//
//  WDMessage.h
//  Whyd
//
//  Created by Damien Romito on 23/05/14.
//  Copyright (c) 2014 Damien Romito. All rights reserved.
//

#import <UIKit/UIKit.h>

#define WDMessageTextColor [UIColor whiteColor]
#define WDMessageBackgroundColor [UIColor blackColor]
#define WDMessageFont @"Helvetica Neue"
#define WDMessageDisplayDuration 2.

@interface WDMessage : UIView
+ (void)showMessage:(NSString*)message;
+ (void)showMessage:(NSString*)message inView:(UIView*)container;
+ (void)showMessage:(NSString*)message inView:(UIView*)container withTopMargin:(BOOL)withTopMargin;
+ (void)showMessage:(NSString*)message inView:(UIView*)container withTopMargin:(BOOL)withTopMargin withBackgroundColor:(UIColor*)backgroundColor;
+ (void)showMessage:(NSString*)message inView:(UIView*)container withTopMargin:(BOOL)withTopMargin withBackgroundColor:(UIColor*)backgroundColor callback:(void (^)())callback;
+ (void)showCustomView:(UIView*)customView inView:(UIView*)container withTopMargin:(BOOL)withTopMargin withBackgroundColor:(UIColor*)backgroundColor callback:(void (^)())callback;

@end
