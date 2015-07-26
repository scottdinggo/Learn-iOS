//
//  Shop.h
//  IUITableView
//
//  Created by Scottding on 15/7/26.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shop : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *icon;

- (id)initWithDict:(NSDictionary *)dic;

@end
