//
//  Car.h
//  内存管理
//
//  Created by Scottding on 15/7/14.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"


@interface Car : NSObject   {
    Engine *_engine;
}

- (void)setEngine:(Engine *) engine;

- (Engine *)Engine;

@end
