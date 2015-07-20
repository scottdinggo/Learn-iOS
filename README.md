# Foundation框架介绍
Cocoa是Mac OS X和iOS程序的运行环境。

在Cocoa众多框架中，最重要且最基本的两个框架是：foundation框架和UIKit框架

Foundation框架和界面无关，UIKit框架和界面有关。

Foundation框架在系统中处于Core Services层

UIKit框架在系统中处于Cocoa Touch层

Foundation框架中的所有类都继承自NSObject类

设计Foundation框架的目标：
- 为内存管理，对象创建，消息传递定义基本的对象
- 用Unicode编码定义字符串类，以及方便的支持语言本地化
- 支持对象的持久保存和发布

Foundation这个框架拥有一百多个类

#常用结构体

NSRange:

```objc
typedef struct _NSRange {
    NSUInteger location;
    NSUInteger length;
} NSRange;
```

这个结构体用来表示相关事物的范围，例如字符串中的字符范围、数组中的元素范围等

NSPoint、NSSize和NSRect:
```objc

//NSPoint结构体
typedef struct _NSPoint {
    CGFloat x;
    CGFloat y;
} NSPoint;

//NSSize结构体
typedef struct _NSSize {
    CGFloat width;		/* should never be negative */
    CGFloat height;		/* should never be negative */
} NSSize;

//NSRect结构体
typedef struct _NSRect {
    NSPoint origin;
    NSSize size;
} NSRect;
```
NSPoint代表的是笛卡儿平面中的一个点（x,y）

NSSize用来存储长度和宽度

NSRecty点和大小复合而成来表示矩形的大小和位置

#字符串的比较和搜索
- stringWithFormat:按照一定的格式创建字符串
- length返回字符串中字符个数
- isEqualToString:用来比较两个字符串是否相同
- compare:区分大小写进行字符串的比较，前面的Ascll码减去后面的Ascll码判断是否大于0
- compare:options:给了我们更多的控制权
    +  NSCaseInsensitiveSearch = 1, //不区分大小写字符
    +  NSLiteralSearch = 2, //区分大小写
    +  NSNumericSearch = 64, //字符个数比较
- hasPrefix:检查一个字符串是否以另一个字符串开头
- hasSuffix:检查一个字符串是否以另一个字符串结尾
```objc
NSString *str1 = @"scottding";
NSString *str2 = @"scott";
NSString *str3 = @"ding";
BOOL isPrefix = [str1 hasPrefix:str2];
BOOL isSuffix = [str1 hasSuffix:str3];
NSLog(@"%i",isPrefix);
NSLog(@"%i",isSuffix);
```
- rangeOfString:返回字符串相匹配的部分在哪里以及匹配的长度
- appendString:将字符串复制到接收对象的末尾
- appendFormat:按照一定的格式将字符串复制到接收对象的末尾- deleteCharactersInRange:删除字符串中的字符
- stringByExpendingTildeInPath:将~替换成当前用户的主目录
```objc
NSString *home = [@"~/Desktop/" stringByExpandingTildeInPath];
        NSLog(@"%@",home);
```
#集合家族
- NSArray：
- arrayWithObjectives:创建数组元素
- count  返回数组元素个数
- objectAtIndex:取得数组中特定位置的值
- componentsSeparatedByString:将字符串分成数组
- componentsJoinedByString:将数组合成字符串
- addObject:在数组末尾添加对象
- removeObjectAtIndex:在指定位置删除数组元素
- NSDictionary
- dictionaryWithObjectsAndKeys:创建字典
- objectForKey:获取字典中的值
- setObject:forkey:给字典添加元素
- removeObjectForKey:删除字典中的元素
- NSNumber将基本数据类型转换为对象类型
- numberWithChar:
- numberWithInt:
- numberWithFloat:
- numberWithBOOL:
- charValue:将对象类型转换为基本数据类型
- IntValue:
- FloatValue:
- stringValue:
-






