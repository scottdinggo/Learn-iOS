//
//  ViewController.h
//  第一个iOS程序
//
//  Created by xiaomage on 15/7/9.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/*
 IBOutlet的几种连线方式
 1.从"控制器"往"Storyboard"连线
 2.从"Storyboard"往"控制器"连线
 3.直接在"Storyboard"中往"Storyboard"上的界面顶部连线
 4.直接在"Storyboard"中往"Storyboard"上的工具条连线
 
 掌握
 5.不用先定义方法, 直接从"Storyboard"往"控制器"连线
 
 注意点:
    1.一个控件可以关联多个属性
    2.一个属性不可以关联多个控件
    3.在进行属性连线的时候, Xcode会自动帮我们进行类型检测, 如果类型不匹配那么不能连线
 
    4.如果将属性和控件连线之后又将属性删除了, 那么只要程序运行就会报一个经典错误
  '[<ViewController 0x7fe9d9f1a5d0> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key lable.'
 
 5.注意: 任何UI控件都可以和属性进行连线, 但是并不是任何控件都可以和方法连线. 只有继承于UIControl的控件才可以连线
 */
// 定义属性保存UI界面中的我是一段文字这个对象
@property(nonatomic, weak)IBOutlet UILabel *lable;

@property (weak, nonatomic) IBOutlet UIButton *customLabel;

@end

