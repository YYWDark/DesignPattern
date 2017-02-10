//
//  NSString+Encryption.h
//  DesignPattern
//
//  Created by wyy on 2017/2/9.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encryption)
+ (NSString *)MD5HashWithString:(NSString *)string;
@end
