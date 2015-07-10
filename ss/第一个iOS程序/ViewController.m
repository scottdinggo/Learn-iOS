//
//  ViewController.m
//  第一个iOS程序
//
//  Created by xiaomage on 15/7/9.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 IBAction几种连线方式
 1.从"控制器"往"Storyboard"连线
 2.从"Storyboard"往"控制器"连线
 3.直接在"Storyboard"中往"Storyboard"上的界面顶部连线
 4.直接在"Storyboard"中往"Storyboard"上的工具条连线
 
 掌握
 5.不用先定义方法, 直接从"Storyboard"往"控制器"连线
 
 IBAction连线的注意点:
 1.在Storyboard中拷贝元素的时候需要注意
    1.1拷贝的同时会将以前的连线一起拷贝
    1.2一个方法可以很多个控件关联
    1.3一个控件可以和很多方法进行连线
        在开发中, 一般情况下不会这样写
 2.如果将按钮关联的方法删除, 运行之后会报一个经典错误
  reason: '-[ViewController redBtnClick]: unrecognized selector sent to instance 0x7fb4aa618e50'
 
 3.IBAction只能作为方法的返回值
    IBAction == viod
*/

// 默认情况下, iOS系统会将UI界面中触发事件的控件当做参数传递进来

/**
 红色按钮
 */
- (IBAction)redBtnClick
{
    UIButton;
    UILabel;
    UISegmentedControl;
    UISwitch;
    NSLog(@"%s", __func__);
    // 拿到UILabel对象, 修改对象的属性, 让label对象变为红色
//    self.lable.textColor = [UIColor redColor];
//    self.lable.text = @"我是红色文字";
//    self.lable.backgroundColor = [UIColor purpleColor];
//    self.lable.font = [UIFont systemFontOfSize:30];
//    self.lable.textAlignment = NSTextAlignmentCenter;
}
/**
 绿色按钮
 */
- (IBAction)greenBtnClick
{
    NSLog(@"%s", __func__);
//    self.lable.textColor = [UIColor greenColor];
}

/**
 蓝色按钮
 */
- (IBAction)blueBtnClick
{
    NSLog(@"%s", __func__);
//    self.lable.textColor = [UIColor blueColor];
}
@end
