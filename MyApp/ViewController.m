//
//  ViewController.m
//  MyApp
//
//  Created by Even on 2020/6/4.
//  Copyright © 2020 Even. All rights reserved.
//

#import "ViewController.h"
#import <MyAppSDK/MyAppSDK.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *buttton = [UIButton buttonWithType:UIButtonTypeSystem];
    buttton.frame = self.view.bounds;
    [buttton addTarget:self action:@selector(jumpNext) forControlEvents:UIControlEventTouchUpInside];
    [buttton setTitle:@"跳转到下一页" forState:UIControlStateNormal];;
    [buttton setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [self.view addSubview:buttton];
    
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
}

- (void)jumpNext {
    [self presentViewController:[NewViewController new] animated:YES completion:nil];
}

@end
