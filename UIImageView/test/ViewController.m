//
//  ViewController.m
//  test
//
//  Created by Scottding on 15/7/11.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController  {
    //定义为全局变量，方便其他方法调用这个对象
    UIImageView *imageView ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UIimage实例化一个image对象，并初始化一个图片给它
    UIImage *image = [UIImage imageNamed:@"image_1"];
    
    // UIImageView实例化一个imageView对象，并装载一个图片
    imageView = [[UIImageView alloc] initWithImage:image];
    
    // 添加到父控件中
    [self.view addSubview:imageView];
    
    // 设置背景颜色
    imageView.backgroundColor = [UIColor redColor];
    
    // 设置视图大小
    imageView.frame = CGRectMake(100, 200, 200, 100);
    
    // 设置图片固定模式
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
