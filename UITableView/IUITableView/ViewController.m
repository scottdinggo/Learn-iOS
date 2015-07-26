//
//  ViewController.m
//  IUITableView
//
//  Created by Scottding on 15/7/26.
//  Copyright (c) 2015年 NYNU. All rights reserved.
//

#import "ViewController.h"
#import "Shop.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
- (IBAction)remove:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *iremove;
@property (weak, nonatomic) IBOutlet UITableView *iTableView;

@end

@implementation ViewController  {
    NSMutableArray *_shops;
    NSMutableArray *delete_shops;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *shop;
    delete_shops = [[NSMutableArray alloc] init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"shops" ofType:@"plist"];
    shop = [NSArray arrayWithContentsOfFile:path];
    _shops = [[NSMutableArray alloc] init];
    for(NSDictionary *dic in shop) {
        Shop *shop = [[Shop alloc] initWithDict:dic];
        [_shops addObject:shop];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section    {
    if([delete_shops count] != 0)    {
        self.iLabel.text = [NSString stringWithFormat:@"淘宝(%li)",[delete_shops count]];
        _iremove.enabled = YES;
    }
    else    {
        self.iLabel.text = @"淘宝";
        _iremove.enabled = NO;
    }
    return _shops.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    
   Shop *shop = _shops[indexPath.row];
    
    static NSString *ID = @"Cell";
    
    
//    NSLog(@"%@",[NSString stringWithFormat:@"----%li",indexPath.row]);
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    cell.textLabel.text = shop.name;
    cell.detailTextLabel.text = shop.desc;
    cell.imageView.image = [UIImage imageNamed:shop.icon];
  //  NSLog(@"%p - %ld",cell,indexPath.row);
    
    //重新刷新时在delete_shops这个数组中的cell都需要打钩
    if([delete_shops containsObject:shop])  {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else    {
        cell.accessoryType = UITableViewCellStyleDefault;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath  {
    return 80;
}


// didSelect选中调用
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Shop *shop = _shops[indexPath.row];
    if([delete_shops containsObject:shop])
        [delete_shops removeObject:shop];
    else
        [delete_shops addObject:shop];
    
    
    [self.iLabel setTextColor:[UIColor redColor]];
        for (Shop *shop in delete_shops) {
        NSLog(@"%@",shop.name);
    }
//    [tableView reloadData];
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
}

//didDeselect取消选中调用
//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath   {
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    cell.accessoryType = UITableViewCellStyleDefault;
//}

- (IBAction)remove:(id)sender {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for(Shop *shop in delete_shops)   {
        NSInteger row = [_shops indexOfObject:shop];
        NSIndexPath *path = [NSIndexPath indexPathForItem:row inSection:0];
        [array addObject:path];
    }
    [_shops removeObjectsInArray:delete_shops];
    [delete_shops removeAllObjects];
    
    [_iTableView deleteRowsAtIndexPaths:array withRowAnimation:UITableViewRowAnimationMiddle];
    
    
    
}
@end
