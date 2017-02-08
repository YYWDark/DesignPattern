//
//  NBAPlayer.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "NBAPlayer.h"

@implementation NBAPlayer
- (void)copyMethodImplementedWithBasePrototypeModel:(BasePrototypeModel *)model {
    NBAPlayer *player = (NBAPlayer *)model;
    player.name = self.name;
    player.age  = self.age;
    player.height = self.height;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"name = %@, age = %ld, height = %f",_name,_age,_height];
}
@end
