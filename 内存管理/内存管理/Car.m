//
//  Car.m
//  内存管理
//
//  Created by Scottding on 15/7/14.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)setEngine:(Engine *)engine  {
    if(_engine != engine)   {            // 判断是否重复
        [_engine release];               // 如果不重复，先对当前对象release，减少对当前对象的引用次数
        [engine retain];       // 对新的对象引用次数+1
        _engine = engine;
    }
}

// 现在setter方法内存管理基本上结束，当我们要释放car对象的时候，也必须要释放它里面的_engine，所以 要重写car的dealloc方法

- （void）dealloc {
    [_engine setEngine:nil];  // 释放car的时候，释放它对engine的引用
    [super dealloc];
}
@end
