//
//  BasePrototypeModel.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "BasePrototypeModel.h"

@implementation BasePrototypeModel
- (id)copyWithZone:(nullable NSZone *)zone {
    //用self的意思是当子类重载时多态的返回子类对象
    BasePrototypeModel *copyModel = [[[self class] alloc] init];
    [self copyMethodImplementedWithBasePrototypeModel:copyModel];
    return copyModel;
}

- (void)copyMethodImplementedWithBasePrototypeModel:(BasePrototypeModel *)model{
    
}


@end
