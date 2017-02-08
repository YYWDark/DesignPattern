//
//  NBATeam.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "BasePrototypeModel.h"

@interface NBATeam : BasePrototypeModel
@property (nonatomic, strong) NSArray *teamPlayers;
@property (nonatomic, strong) NSString *name;
@end
