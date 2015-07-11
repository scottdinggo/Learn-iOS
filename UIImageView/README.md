# UIImageView

UIImage用来定义一张图片，只负责把图片添加到程序中，由于它不是视图无法被加载显示到界面中。

```objc
// UIImage实例化一个image对象，并初始化一个图片给它，image没有frame框架
UIImage *image = [UIImage imageName:@"pictureNmae"];
```

UIImageView用来定义一个图片视图，然后把程序中的图片（通常保存在一个数组中）加载到视图中显示出来。通过startAnimating和stopAnimating等方法来控制是否播放。
```objc
// 创建UIImageView对象imageView装载图片，设置大小等属性
UIImageView *imageView = [[UIImageView alloc] initWithImage:image]
//设置背景
imageView.backgroundColor = [UIColor redColor];
//设置内容模式
[imageView setContentMode:UIViewContentModeCenter]
//UIViewContentModeScaleToFill  填满
//UIViewContentModeScaleASpectFill  等比例缩放填满
//UIViewContentModeScaleAspectFit   等比例缩放到填充最大尺度

```
