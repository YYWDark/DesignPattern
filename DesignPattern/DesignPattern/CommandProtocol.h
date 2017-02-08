//
//  CommandProtocol.h
//  DesignPattern
//
//  Created by wyy on 2017/2/7.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>
@required
- (void)execute;
@end
