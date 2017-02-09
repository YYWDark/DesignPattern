//
//  PhoneNumberInputStrategy.m
//  DesignPattern
//
//  Created by wyy on 2017/2/8.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "PhoneNumberInputStrategy.h"

@implementation PhoneNumberInputStrategy
- (BOOL)validateInput:(UITextField *)input {
    
    if (input.text.length == 0) {
        
        self.errorMessage = EMPTY_INPUT;
        
        return NO;
    } else {
        BOOL isMatch = [input.text isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
        if (isMatch == NO) {
            self.errorMessage = @"请输入正确的手机号码";
        } else {
            self.errorMessage = nil;
        }
        
        return isMatch;
    }
}
@end
