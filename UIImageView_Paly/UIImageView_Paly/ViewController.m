//
//  ViewController.m
//  UIImageView_Paly
//
//  Created by Scottding on 15/7/11.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController  {
    
    // 定义一个全局变量，方便其他方法使用
    UIImageView *imageView ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化实例对象imageView
    imageView = [[UIImageView alloc] init];
    
    //设置背景颜色
    imageView.backgroundColor = [UIColor redColor];
    
    //设置空间大小
    imageView.frame = CGRectMake(100, 150, 200, 100);
    
    //设置图片播放位置
    [imageView setContentMode:UIViewContentModeScaleToFill];
    
    //添加到父控件中
    [self.view addSubview:imageView];
    
    //声明并初始化一个数组对象
    NSMutableArray *images = [[NSMutableArray alloc] init];
    
    //将图片添加到数组中
    for(int i = 1; i <= 87; i++)    {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"dazhao_%d",i]];
        [images addObject:image];
    }
    
    // 将数组添加到视图控件中
    imageView.animationImages = images;
    
    //设置播放时间
    imageView.animationDuration = 3;
    
    //设置重复次数
    imageView.animationRepeatCount = 1;
    
    //开始播放
    [imageView startAnimating];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
