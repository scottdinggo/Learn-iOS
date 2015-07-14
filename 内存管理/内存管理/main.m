//
//  main.m
//  内存管理
//
//  Created by Scottding on 15/7/13.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
内存管理黄金法则：
 
 The basic rule to apple is everything that increases the reference counter with alloc、new、copy or retain in charge of the corresponding release or autorelease
 如果一个对象使用了alloc、new、copy和retain关键字，那么你必须使用相应的release或autorelease
*/


// 任何继承于NSObject对象都属于OC的类型，内存管理指的是OC类型的内存管理，对基本数据类型不管用

// 每个OC对象都有一个4个字节的retainCount的计数器，表示当前对象被引用的次数。如果引用计数器为0，那么就释放这个对象


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
