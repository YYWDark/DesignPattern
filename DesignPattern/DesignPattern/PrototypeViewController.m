//
//  PrototypeViewController.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "PrototypeViewController.h"
#import "NBAPlayer.h"
#import "NBATeam.h"

@interface PrototypeViewController ()

@end

@implementation PrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //球员
    NBAPlayer *kobe = [NBAPlayer new];
    kobe.name = @"kobe";
    kobe.age  = 18;
    kobe.height = 198.0;
    //当对象的属性很多且有大量相似时(比如假设kobe 和 tMac年纪相同)，我们可以利用原型设计模式快速构造。
    NBAPlayer *tMac = kobe.copy;
    tMac.name = @"tMac";
    tMac.height = 203.0f;
    NSLog(@"kobe = %@ \n tMac = %@",kobe,tMac);
    
    
    //球队
    NBATeam *laker = [NBATeam new];
    laker.name = @"laker";
    laker.teamPlayers = @[kobe,tMac];
    
    NBATeam *sun = laker.copy;
    sun.name = @"sun";
    
    
}

- (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
