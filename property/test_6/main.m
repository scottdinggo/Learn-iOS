//
//  main.m
//  test_6
//
//  Created by Scottding on 15/7/18.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        //Student *stu = [[Student alloc] init];
        person.ID = 20; //将转化为下面形式
       // [person setID:20];
        
        NSLog(@"%d",person.ID);
        [person test];
        
        
      //  [stu test];
    }
    return 0;
}
