//
//  AddCommand.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

@interface AddCommand : NSObject
- (id)initWithReceiver:(Receiver *)receiver parameter:(NSInteger)number;
@end
