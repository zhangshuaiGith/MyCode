//
//  UIView+Color.m
//  RunTime方法交换Demo
//
//  Created by ZSMAC on 2018/7/26.
//  Copyright © 2018年 张帅. All rights reserved.
//

#import "UIView+Color.h"
#import <objc/runtime.h>
@implementation UIView (Color)
+(void)load {
    Method m  = class_getInstanceMethod([self class], @selector(setBackgroundColor:));//获取原来的方法
    Method m2 = class_getInstanceMethod([self class], @selector(zs_backgroundColor:));//设置要交换的方法
    method_exchangeImplementations(m, m2);//方法交换
}
- (void)zs_backgroundColor:(UIColor *)color {
    NSLog(@"方法交换");
    if (color == [UIColor redColor]) {
        [self zs_backgroundColor:[UIColor blueColor]];
    } else {
        [self zs_backgroundColor:color];
    }
    
   
}
@end
