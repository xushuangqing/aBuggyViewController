//
//  XSQDetailViewController.m
//  XSQControllerDemo
//
//  Created by 徐霜晴 on 15/10/20.
//  Copyright © 2015年 徐霜晴. All rights reserved.
//

#import "XSQDetailViewController.h"

@interface XSQDetailViewController ()

@end

@implementation XSQDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

@end
