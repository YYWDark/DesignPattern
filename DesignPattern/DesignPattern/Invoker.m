//
//  Invoker.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "Invoker.h"
@interface Invoker ()
@property (nonatomic, strong) NSMutableArray *commandQueue;
@end

@implementation Invoker
+ (instancetype)sharedInstance {
    static Invoker        *sharedInstanceValue = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        
        sharedInstanceValue = [[Invoker alloc] init];
        sharedInstanceValue.commandQueue = [NSMutableArray array];
    });
    
    return sharedInstanceValue;
}

- (void)addAndExecute:(id <CommandProtocol>)command {
    // 添加并执行，命令添加后，可以持久化本地，可以恢复到当前的状态
    [self.commandQueue addObject:command];
    [command execute];
}

- (void)callBackExecute {
    if (self.commandQueue.count == 0) return;
    id command = [self.commandQueue lastObject];
    [command execute];
    [self.commandQueue removeLastObject];
}

@end
