# UIButton Control UIImageView
##用一个按钮来控制动画的播放和暂停
首先需要自定义一个按钮：
```objc
// 自定义一个按钮
UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
// 点击按钮时，按钮需要高亮
btn.showsTouchWhenHighlighted = YES;
// 按钮上初始字符为“停止”，状态设为正常
[btn setTitle:@"停止" forState:UIControlStateNormal];
// 按钮标签设为1
btn.tag = 1;
```
UIControl是UIView的子类，也是UIResponder的子类。UIControl是UIButton、UISwitch、UITextField等控件的父类，它本身包含一些属性和方法，但不能直接使用UIControl类，它只是定义了子类的需要使用的方法。

UIControl对象采用了一种新的事件处理机制，无需关心用户访问控件的具体方式。例如通过UIControl对象处理后，按下按钮的事件就被封装成一个控件事件，而不用去判断触摸屏幕的整个过程。

例如按钮的单击事件：UIControlEventTouchUpInside

UIControl首先将触摸事件转换为控件事件，再转换为各种操作。我们需要完成第二步转换代码，即将控件事件转换为有目标的操作。

使用addTarget: action: forControlEvents:

这是UIControl的一个方法，为指定的控件对象添加事件，例如：
```obj
[btn addTarget:self action:@selector(btnClieck) forControlEvents:UIControlEventTouchUpInside]
```

addTarget:中的参数代表要把参数发送到哪里，一般是self,通常指实例化控件对象的控制器；

action后面是一个选择器，表示该事件要响应的方法

最后一个是事件类型，表示响应什么样的事件
