//
//  NewViewController.m
//  MyAppSDK
//
//  Created by Even on 2020/6/4.
//  Copyright © 2020 Even. All rights reserved.
//

#import "NewViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.redColor;
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
}

@end
