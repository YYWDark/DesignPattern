//
//  StrategyViewController.m
//  DesignPattern
//
//  Created by wyy on 2017/2/8.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "StrategyViewController.h"
#import "MMTextField.h"
#import "PhoneNumberInputStrategy.h"
@interface StrategyViewController () <UITextFieldDelegate>
@property (nonatomic, strong) MMTextField  *phoneNumberField;
@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initUI];

}

- (void)initUI {
    self.phoneNumberField = [[MMTextField alloc] initWithFrame:CGRectMake(10, 100, 200, 30) withInputValidator:[PhoneNumberInputStrategy new]];
    self.phoneNumberField.delegate = self;
    [self.view addSubview:self.phoneNumberField];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"验证" forState:UIControlStateNormal];
    button.frame = CGRectMake(10, 220, 100, 30);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(respondsToButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)respondsToButtonAction:(UIButton *)sender {
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    MMTextField *customField = (MMTextField *)textField;
    
    if ([customField validate] == NO) {
        // 提示信息
        NSLog(@"errorMessage = %@",customField.inputValidator.errorMessage);
     
    }else {
        NSLog(@"输入正确");
    }
}
@end
