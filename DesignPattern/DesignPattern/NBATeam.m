//
//  NBATeam.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "NBATeam.h"

@implementation NBATeam
- (void)copyMethodImplementedWithBasePrototypeModel:(BasePrototypeModel *)model {
    NBATeam *team = (NBATeam *)model;
    team.name = self.name;
    team.teamPlayers = [self.teamPlayers copy];
    /*
    上面的写法你会发现球队里面的队员的地址是一样的，显然这不是我们想要的。毕竟球员不可能同时属于两支球队。我们做如下修改：
    team.teamPlayers = [[NSArray alloc] initWithArray:self.teamPlayers copyItems:YES];
    关于深复制与浅复制你可以看这里：http://ibloodline.com/articles/2016/03/10/memory3-copy.html
     */

}
@end
