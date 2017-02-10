//
//  Player.h
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoDelegate.h"

@interface Player : NSObject <MementoDelegate>
@property (nonatomic, strong) NSNumber *level;
@property (nonatomic, copy) NSString *nickname;
@end
