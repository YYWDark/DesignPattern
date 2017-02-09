//
//  BaseInputStrategy.h
//  DesignPattern
//
//  Created by wyy on 2017/2/8.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RegExCategories.h"
#define  EMPTY_INPUT  @"输入为空"

@interface BaseInputStrategy : NSObject
- (BOOL)validateInput:(UITextField *)input;

@property (nonatomic, strong) NSString *errorMessage;
@end
