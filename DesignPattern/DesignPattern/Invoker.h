//
//  Invoker.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject
+ (instancetype)sharedInstance;
- (void)addAndExecute:(id <CommandProtocol>)command;
- (void)callBackExecute;
@end
