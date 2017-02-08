//
//  UpdateNumberCommand.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"
#import "CommandProtocol.h"

@interface UpdateNumberCommand : NSObject <CommandProtocol>

- (id)initWithReceiver:(Receiver*)receiver number:(NSUInteger)number;
@end
