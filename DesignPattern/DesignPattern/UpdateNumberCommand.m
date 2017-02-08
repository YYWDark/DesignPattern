//
//  UpdateNumberCommand.m
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "UpdateNumberCommand.h"
@interface UpdateNumberCommand ()
@property (nonatomic, strong) Receiver *receiver;
@property (nonatomic, assign) NSUInteger number;
@end
@implementation UpdateNumberCommand
- (id)initWithReceiver:(Receiver *)receiver number:(NSUInteger)number {
    self = [super init];
    if (self) {
        _receiver = receiver;
        _number = number;
    }
    return self;
}

- (void)execute {
    [self.receiver updateNumber:[NSString stringWithFormat:@"%ld",self.number]];
}


@end
