
//  Person.h
//  test_6
//
//  Created by Scottding on 15/7/18.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject    {
    int _ID;
    int ID;
}

//@property声明ID的setter方法和getter方法


@property int ID;
//- (void)setID:(int)ID;
//- (int)ID;

- (void)test;

@end
