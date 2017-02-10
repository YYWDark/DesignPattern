//
//  MementoDelegate.h
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoDelegate <NSObject>
@required
- (id)loadDataFromCurrentState;
- (void)loadDataFromPreviousState:(id)state;
@end
