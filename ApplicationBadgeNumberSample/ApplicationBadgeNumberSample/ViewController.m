//
//  ViewController.m
//  ApplicationBadgeNumberSample
//
//  Created by Dolice on 2013/07/03.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSInteger applicationBadgeNum;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //アプリケーションバッヂ初期化
    _applicationBadgeNum = 0;
}

//アプリケーションバッヂを増やす
- (IBAction)addApplicationBadgeEvent:(id)sender
{
    _applicationBadgeNum++;
    [UIApplication sharedApplication].applicationIconBadgeNumber = _applicationBadgeNum;
}

//アプリケーションバッヂ削除
- (IBAction)resetApplicationBadgeEvent:(id)sender
{
    _applicationBadgeNum = 0;
    [UIApplication sharedApplication].applicationIconBadgeNumber = _applicationBadgeNum;
}

@end
