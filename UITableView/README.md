# UITableView 性能优化
当Cell显示在界面上时，才创建一个cell,当界面上的cell不在界面上时，cell就会自动删除，需要再次出现在界面上时，又会重新创建一个cell,这样来来回回的创建cell和清理cell是非常消耗性能的。为了能够提高性能，我们在初始化一个cell时，给这个cell定义一个标识，当这个cell不再使用时，将它放到缓存池中，当需要再次创建一个cell时，就从缓存池中取出这个cell,就可以省去再次进行内存分配任务。当缓存池中没有可用的cell，再创建一个cell，并给这个cell定义一个标识
```objc
UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
```

###字典转模型
遇到字典一般转换成模型，修改数据时可以减少一些修改，避免错误。

```objc
- (id)initWithDict:(NSDictionary *)dic  {
    if(self = [super init]) {
        self.name = dic[@"name"];
    }
    return self;
}

+ (id)shopWithDict:(NSDictionary *)dic  {
    Shop *shop = [[Shop alloc] init];
    shop.name = dic[@"name"];
    return shop;
}
```

###tableView局部刷新
在修改数据较小的情况下，使用全局刷新是非常消耗性能的，tableView提供了局部刷新的方法
```objc
[tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:……];
```
