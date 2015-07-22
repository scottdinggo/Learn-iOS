//
//  ViewController.m
//  slider
//
//  Created by Scottding on 15/7/22.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)iSlider:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *iImage;
@property (weak, nonatomic) IBOutlet UILabel *iLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)iSlider:(UISlider *)sender {
    self.iImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%.f",sender.value]];
    [self.iLabel setText:[NSString stringWithFormat:@"%.f/6",sender.value]];
}
@end
