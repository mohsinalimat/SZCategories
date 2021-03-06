//
//  NSString+SZDigital.m
//  SZCategories
//
//  Created by 陈圣治 on 16/6/21.
//  Copyright © 2016年 陈圣治. All rights reserved.
//

#import "NSString+SZDigital.h"

@implementation NSString (SZDigital)

//判断是否时整形
- (BOOL)sz_isPureInt {
    NSString *regex = [NSString stringWithFormat:@"^[0-9]{0,}$"];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

//判断是否为浮点形
- (BOOL)sz_isPureFloat {
    NSString *regex = [NSString stringWithFormat:@"^[0-9]+(\\.[0-9]{1,})?$"];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

@end
