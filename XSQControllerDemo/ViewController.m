//
//  ViewController.m
//  XSQControllerDemo
//
//  Created by 徐霜晴 on 15/10/11.
//  Copyright © 2015年 徐霜晴. All rights reserved.
//

#import "ViewController.h"
#import "XSQDetailViewController.h"

@interface ViewController () <UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) UIButton *thumb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.thumb = [[UIButton alloc] initWithFrame:CGRectMake(60, 60, 100, 100)];
    [self.thumb addTarget:self
                   action:@selector(handleButtonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    [self.thumb setTitle:@"Click Me" forState:UIControlStateNormal];
    [self.thumb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:self.thumb];
    
    [self wasteCPU];
}

- (void)wasteCPU {
    for (int i = 0; i < 100000000; i++) {
        int b = i * i;
        b++;
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        [self wasteCPU];
    });
}

- (void)handleButtonPressed:(UIButton *)sender {
    XSQDetailViewController *presentedViewController = [[XSQDetailViewController alloc] init];
    [self presentViewController:presentedViewController animated:NO completion:nil];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

@end
