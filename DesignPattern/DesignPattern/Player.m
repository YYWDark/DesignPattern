//
//  Player.m
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "Player.h"

@implementation Player
- (id)loadDataFromCurrentState {
    return @{@"name" : self.nickname == nil ? @""  : self.nickname,
             @"age"  : self.level  == nil ? @(0) : self.level};
}
- (void)loadDataFromPreviousState:(id)state {
    NSDictionary *obj = state;
    
    self.nickname = obj[@"name"];
    self.level  = obj[@"age"];
}
@end
