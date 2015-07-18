//
//  Person.m
//  test_6
//
//  Created by Scottding on 15/7/18.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//
#import "Person.h"

@implementation Person


//@synthesize ID = _ID 默认情况setter方法和getter方法为变量_ID提供服务

//- (void)setID:(int)ID   {
//    _ID = ID ;
//}


//- (int)ID   {
//    return _ID;
//}

//如果写上 @synthesize ID; setter方法和getter方法为变量ID提供服务

//@synthesize ID;



- (void)test    {
    NSLog(@"_ID = %i",_ID);
    NSLog(@"ID = %i",ID);
}

@end
