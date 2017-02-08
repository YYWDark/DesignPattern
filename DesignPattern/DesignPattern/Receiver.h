//
//  Receiver.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Receiver : NSObject
@property (nonatomic, strong) UILabel *numLabel;

- (void)updateNumber:(NSString *)number;
@end
