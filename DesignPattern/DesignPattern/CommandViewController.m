//
//  CommandViewController.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "CommandViewController.h"
#import "DegisnPatternHeader.h"
#import "Receiver.h"
#import "UpdateNumberCommand.h"
#import "Invoker.h"

@interface CommandViewController ()
@property (nonatomic, strong) UILabel *numLabel;
@property (nonatomic, strong) Receiver *receiver;
@end

@implementation CommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initUI];
    
    // 创建客户端接收器
    self.receiver           = [[Receiver alloc] init];
    self.receiver.numLabel  = self.numLabel;
    
}

- (void)initUI {
    NSArray *btnArrry = @[@"减少",@"增加",@"随机"];
    CGFloat topMargin = 100.0f;
    CGFloat btnHeigth = 100;
    CGFloat distance  = 50.0f;
    CGFloat btnWidth  = (kScreenWidth - (btnArrry.count + 1)*distance)/btnArrry.count;
    [btnArrry enumerateObjectsUsingBlock:^(NSString * btnName, NSUInteger idx, BOOL * _Nonnull stop) {
       UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
       button.frame = CGRectMake(distance + (distance + btnWidth)*idx, topMargin, btnWidth, btnHeigth);
        button.tag = idx;
       [button setTitle:btnArrry[idx] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
       [button addTarget:self action:@selector(respondsToButtonAction:) forControlEvents:UIControlEventTouchUpInside];
       [self.view addSubview:button];
   }];
    
    self.numLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,250, kScreenWidth, 100)];
    self.numLabel.font = [UIFont systemFontOfSize:20];
    self.numLabel.textAlignment = NSTextAlignmentCenter;
    self.numLabel.text = @"0";
    [self.view addSubview:self.numLabel];
    
}

#pragma mark - action
- (void)respondsToButtonAction:(UIButton *)sender {
    NSUInteger textValue = [self.numLabel.text integerValue];
    switch (sender.tag) {
        case 0:{
            if (textValue <=0) return;
            textValue -= 1;
            break;}
        case 1:{
            textValue += 1;
            break;}
        case 2:{
            textValue = random()%100;
            break;}
        case 3:{
            //可以利用
//            [[Invoker sharedInstance] callBackExecute];
            return;
            break;}
        default:
            break;
    }
    
    UpdateNumberCommand *command = [[UpdateNumberCommand alloc] initWithReceiver:self.receiver number:textValue];
    [[Invoker sharedInstance] addAndExecute:command];
}
@end
