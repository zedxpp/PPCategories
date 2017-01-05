PPCategories
==============
[![Travis](https://img.shields.io/travis/rust-lang/rust.svg)](https://github.com/SimleCp/PPCategories)&nbsp;
[![CocoaPods](https://img.shields.io/cocoapods/v/PPCategories.svg)](https://github.com/SimleCp/PPCategories)&nbsp;
[![CocoaPods](https://img.shields.io/cocoapods/p/PPCategories.svg)](https://github.com/SimleCp/PPCategories)&nbsp;
[![CocoaPods](https://img.shields.io/cocoapods/l/PPCategories.svg)](https://github.com/SimleCp/PPCategories)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%206%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)

CategoryRepository

Installation
==============

### CocoaPods

1. Add `pod 'PPCategories'` to your Podfile.
2. Run `pod install` or `pod update`.
3. Import \<PPCategories/PPCategories.h\>.

#### 必读: 以下内容, 无序列表后面的文字是 `分类功能的描述` , 根据分类功能加入的先后顺序排列, 下载本仓库, 直接以 `分类功能的描述` 为关键字, 全局搜索或者文件内搜索即可.
#### 分享自用的 Category 文件, 不定期更新
##### Category 文件  >>>>   详见路径 CategoryRepository/Category
___

## Category预览

___

> NSString

* 字符串加密

```objc
 md5 sha1 sha256 sha512
 hmacSHA1 hmacSHA256 hmacSHA512
```


* 获取当前路径的文件大小
* 获取 Cache 路径的完整路径地址
* 获取 Documents 路径的完整路径地址
* 获取 Tmp 路径的完整路径地址



* 将 NSTimeInterval 转换为分钟和秒钟格式化输出
* 根据文字宽度和字体大小获取文字高度
* 根据字体大小获取文字宽度

___

> UIView

* 让UI控件直接访问Frame(CGRect)结构体内部

```objc
@property (nonatomic, assign) CGFloat pp_x;
@property (nonatomic, assign) CGFloat pp_y;
@property (nonatomic, assign) CGFloat pp_width;
@property (nonatomic, assign) CGFloat pp_height;
@property (nonatomic, assign) CGFloat pp_centerX;
@property (nonatomic, assign) CGFloat pp_centerY;

@property (nonatomic, assign) CGPoint pp_origin;
@property (nonatomic, assign) CGSize pp_size;

@property (nonatomic, assign) CGFloat pp_left;
@property (nonatomic, assign) CGFloat pp_right;
@property (nonatomic, assign) CGFloat pp_top;
@property (nonatomic, assign) CGFloat pp_bottom;

```

* 设置导航栏标题
* 获取当前view所在的控制器

___

> UIImage

* 传入无需系统自动渲染的图片的名称 (字符串) , 返回原始的图片
* 根据图片名 (字符串) 生成圆形头像 (UIImage对象)
* 根据URL字符串下载图片

___

> NSDate

* 是否为今天
* 是否为昨天
* 是否为明天
* 是否为今年

* 获取当前时间戳

* 时间戳转换为日期字符串 格式: yyyyMMdd
* 时间戳转换为日期字符串 格式: yyyy-MM-dd
* 时间戳转换为日期字符串 格式: yyyy-MM-dd HH:mm
* 时间戳转换为日期字符串 格式: yyyy-MM-dd HH:mm:ss
* 日期字符串转换为时间戳 输入的日期字符串格式: yyyyMMdd
* 日期字符串转换为时间戳 输入的日期字符串格式: yyyy-MM-dd
* 日期字符串转换为时间戳 输入的日期字符串格式: yyyy-MM-dd HH:mm:ss

___

> UIBarButtonItem

* 快速生成UIBarButtonItem类方法

```objc
+ (instancetype)itemWithNilItem;

+ (instancetype)itemWithTarget:(id)target action:(SEL)action;

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

+ (instancetype)itemWithImage:(NSString *)image target:(id)target action:(SEL)action;

+ (instancetype)itemWithNormalImage:(NSString *)normalImage target:(id)target action:(SEL)action title:(NSString *)title;

+ (instancetype)itemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action title:(NSString *)title;
```
___

> UITabBar

* 在UITabBar上添加 消息未读取 的小圆点

___

> UIApplication

* 获取窗口当前正在显示控制器

___

> UIColor

* 根据RGBA返回UIColor
* 根据RGB返回UIColor
* 根据 颜色二进制 和透明度 返回UIColor
* 根据 颜色二进制 返回UIColor

___

> NSObject

* 打印 对象属性,成员变量 的值

___

> SingleClass

* 仅需 **4** 步搞定一个单例类(支持ARC和MRC), 详细使用说明见代码

License
==============
PPCategories is provided under the MIT license. See LICENSE file for details.
