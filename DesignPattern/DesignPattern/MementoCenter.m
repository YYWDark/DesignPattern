//
//  MementoCenter.m
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"
#import "NSString+Encryption.h"

@implementation MementoCenter
+ (void)saveMementoObject:(id <MementoDelegate>)mementObject withKey:(NSString *)key{
    NSParameterAssert(mementObject);
    NSParameterAssert(key);
    NSData *data = [self makeDataWithValue:[mementObject loadDataFromCurrentState]];
    if (data) {
        [self storeValue:data with:[NSString MD5HashWithString:key]];
    }
}

+ (id)mementoObjectWithKey:(NSString *)key {
    NSParameterAssert(key);
    NSData *data = [self valueWithKey:[NSString MD5HashWithString:key]];
    if (data) {
        return [self makeObjectWithData:data];
    } else {
        return nil;
    }
}

#pragma mark - 本地持久化
+ (void)storeValue:(id)value with:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
}

+ (id)valueWithKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

#pragma mark - 使用FastCode来处理对象
+ (NSData *)makeDataWithValue:(id)value {
    
    return [FastCoder dataWithRootObject:value];
}

+ (id)makeObjectWithData:(NSData *)data {
    
    return [FastCoder objectWithData:data];
}
@end
