//
//  ViewController.m
//  WDMessage
//
//  Created by Damien Romito on 22/09/15.
//  Copyright © 2015 Whyd. All rights reserved.
//

#import "ViewController.h"
#import "WDMessage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.title = @"WDMessage";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    
    UIButton *test1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 20, self.view.frame.size.width - 20, 40)];
    [test1 setTitle:@"In view" forState:UIControlStateNormal];
    [test1 setBackgroundColor:[UIColor greenColor]];
    [test1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [test1 addTarget:self action:@selector(actionTest1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:test1];
    
    UIButton *test2 = [[UIButton alloc] initWithFrame:CGRectMake(10, 80, self.view.frame.size.width - 20, 40)];
    [test2 setTitle:@"On the top" forState:UIControlStateNormal];
    [test2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [test2 setBackgroundColor:[UIColor blueColor]];
    [test2 addTarget:self action:@selector(actionTest2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:test2];
    
    UIButton *test3 = [[UIButton alloc] initWithFrame:CGRectMake(10, 140, self.view.frame.size.width - 20, 40)];
    [test3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [test3 setTitle:@"Tap action" forState:UIControlStateNormal];
    [test3 setBackgroundColor:[UIColor yellowColor]];
    [test3 addTarget:self action:@selector(actionTest3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:test3];
    
}

- (void)actionTest1
{
    [WDMessage showMessage:@"This is a fucking message" inView:self.view];
}

- (void)actionTest2
{
    [WDMessage showMessage:@"This is a fucking message"];
}

- (void)actionTest3
{
    [WDMessage showMessage:@"This is a fucking message" inView:self.view withTopMargin:NO withBackgroundColor:nil callback:^{
        UIViewController *vc = [[UIViewController alloc] init];
        vc.title = @"New Controller";
        vc.view.backgroundColor = [UIColor grayColor];
        [self.navigationController pushViewController:vc animated:YES];
        
    }];
}

@end
