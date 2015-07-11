//
//  ViewController.m
//  UIImageView_UIButton
//
//  Created by Scottding on 15/7/11.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController  {
    UIImageView *imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"dazhao_1"]];
    imageView.backgroundColor = [UIColor redColor];
    imageView.frame = CGRectMake(70, 150, 200, 100);
    [self.view addSubview:imageView];
    [imageView setContentMode:UIViewContentModeScaleToFill];
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    
    for(int i = 1; i <= 87; i++)    {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"dazhao_%d",i]];
        [images addObject:image];
    }
    
    imageView.animationImages = images;
    
    imageView.animationDuration = 3;
    
    imageView.animationRepeatCount = 0;
    
    [imageView startAnimating];
    
    //按钮属性初始化为Custom（自定义）
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //设置按钮大小
    btn.frame = CGRectMake(160, 100, 40, 40);
    
    // 按钮添加到界面中
    [self.view addSubview:btn];
    
    //设置按钮字体颜色，自定义按钮
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //设置按钮背景颜色
    btn.backgroundColor = [UIColor grayColor];
    
    // 点击按钮时，按钮高亮
    btn.showsTouchWhenHighlighted = YES;
    
    // 按钮上字体设置为停止，状态为自定义
    [btn setTitle:@"停止" forState:UIControlStateNormal];
    
    // 按钮标志设置为1
    btn.tag = 1;
    
    // 指定的控件对象添加事件
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];

}


// 控件事件需要响应的方法
-(void) btnClick:(id)sender {
    
    //触摸事件转换为控件事件
    UIButton *btn = (UIButton *)sender;

    if(btn.tag == 1)    {
        [btn setTitle:@"开始" forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor greenColor];
        [imageView stopAnimating];
        btn.tag = 2;
    }
    else    {
        [btn setTitle:@"停止" forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor grayColor];
        [imageView startAnimating];
        btn.tag = 1;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
