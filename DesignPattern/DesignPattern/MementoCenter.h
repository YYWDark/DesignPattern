//
//  MementoCenter.h
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoDelegate.h"
@interface MementoCenter : NSObject
+ (void)saveMementoObject:(id <MementoDelegate>)mementObject withKey:(NSString *)key;
+ (id)mementoObjectWithKey:(NSString *)key;
@end
