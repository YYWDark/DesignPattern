//
//  MMTextField.h
//  DesignPattern
//
//  Created by wyy on 2017/2/8.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseInputStrategy.h"

@interface MMTextField : UITextField
@property (nonatomic, strong) BaseInputStrategy  *inputValidator;

- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(BaseInputStrategy *)inputValidator;
- (BOOL)validate;

@end
