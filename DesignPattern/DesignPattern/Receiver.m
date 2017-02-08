//
//  Receiver.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver
- (void)updateNumber:(NSString *)number {
    self.numLabel.text = number;
}
@end
