# OC内存管理
OC使用“对象引用计数”来进行内存方面的管理，早期使用手动引用计数，现在使用自动引用计数（ARC），每个OC对象都有一个4个字节的retainCount的计数器，表示当前对象被引用的次数，当引用计数器为0时，那么就释放掉这个对象


####手动引用计数：

如果一个对象使用了alloc、new、copy和retain关键字，那么你必须使用相应的release或autorelease

####自动引用计数
实际上就是编译器代替程序员完成对引用计数的增减，不在需要程序员手动retain和release，让程序员留有更多的精力去完成其他任务。

####autorelease
autorelease实际上只是把对release的调用延迟了，当系统把当前对象放入autoreleasepool中，在pool被释放时，该pool中的所有对象都会调用一次release

系统对于每一个run loop,都会隐式创建一个autoreleasepool，这样所有的releasepool会构成一个栈式结构，在每一个run loop 结束时，栈顶的releasepool会被销毁。

**构造函数返回的对象都是autorelease的，如果想把它当一个全局变量使用，必须自己再retain，释放时再release**

####@property和@synthesize
@property实质上是声明成员变量的setter方法和getter方法

@synthesize实质上是定义成员变量的setter方法和getter方法

而属性的一些特性（assign、copy、retain、weak、strong……）是用来告诉setter方法该如何定义

例如：
assign展开的setter写法：
```objc
- (void)setPerson:(Person *) person   {
    _person = person;
}
```

retain展开的setter写法：
```objc
- (void)setPerson:(Person *) person   {
    if(_person != person)   {
        [_person release];
        [person retain];
        _person = person;
    }
}
```

copy展开的setter写法：
```objc
- (void)setPerson:(Person *) person {
    [_person release];
    _person = [person copy];  // 多了一次引用
}
```
**被定义有copy属性的对象必须符合NSCopying协议，还必须实现- (id)copyWithZone:(NSZone *)zone方法**

