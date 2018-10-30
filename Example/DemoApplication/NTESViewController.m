//
//  NTESViewController.m
//  DemoApplication
//
//  Created by chris on 15/10/7.
//  Copyright © 2015年 chris. All rights reserved.
//

#import "NTESViewController.h"
#import "NIMKit.h"
#import "NTESSessionListViewController.h"

#define NIMMyAccount   @"lilei"
#define NIMMyToken     @"123456"

#define seller1_user2   @"s1user2"
#define sellerToken1_user2     @"a06b71a99fb74f27b2e1deb1c3ce75e7"


@interface NTESViewController ()

@end

@implementation NTESViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"登录";
}


- (IBAction)login:(id)sender{
    //请将 NIMMyAccount 以及 NIMMyToken 替换成您自己提交到此App下的账号和密码
    [[NIMSDK sharedSDK].loginManager login:seller1_user2 token:sellerToken1_user2 completion:^(NSError *error) {
        if (!error) {
            NSLog(@"登录成功");
            //创建会话列表页
            NTESSessionListViewController *vc = [[NTESSessionListViewController alloc] initWithNibName:nil bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
        }else{
            NSLog(@"登录失败");
        }
    }];
}

@end
