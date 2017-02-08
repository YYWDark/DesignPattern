//
//  NBAPlayer.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "BasePrototypeModel.h"

@interface NBAPlayer : BasePrototypeModel
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) float height;
@end
