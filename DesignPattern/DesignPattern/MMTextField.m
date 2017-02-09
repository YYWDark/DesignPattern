//
//  MMTextField.m
//  DesignPattern
//
//  Created by wyy on 2017/2/8.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "MMTextField.h"

@implementation MMTextField
#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(BaseInputStrategy *)inputValidator {
    
    if (self = [super initWithFrame:frame]) {
        // 持有inputValidator
        self.inputValidator = inputValidator;
        self.layer.borderWidth = 1.0f;
        self.layer.borderColor = [UIColor blackColor].CGColor;
    }
    
    return self;
}

- (BOOL)validate {
    return [self.inputValidator validateInput:self];
}
@end
