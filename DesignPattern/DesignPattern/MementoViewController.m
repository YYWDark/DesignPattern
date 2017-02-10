//
//  MementoViewController.m
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "MementoViewController.h"
#import "Player.h"
#import "MementoCenter.h"

@interface MementoViewController ()

@end

@implementation MementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    Player *player = [Player new];
    id state = [MementoCenter mementoObjectWithKey:@"player"];
    // 恢复状态
    [player loadDataFromPreviousState:state];
    // 打印
    NSLog(@"nickname:%@  level:%@", player.nickname, player.level);
    
    // 赋值
    player.nickname   = @"kobe";
    player.level    = @12;
    // 存储状态
    [MementoCenter saveMementoObject:player withKey:@"player"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
