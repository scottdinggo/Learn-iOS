//
//  Shop.m
//  IUITableView
//
//  Created by Scottding on 15/7/26.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "Shop.h"

@implementation Shop
- (id)initWithDict:(NSDictionary *)dic  {
    if(self = [super init]) {
        self.name = dic[@"name"];
        self.icon = dic[@"icon"];
        self.desc = dic[@"desc"];
    }
    return self;
}
@end
