### CategoryRepository - Readme
#### 必读: 以下内容, 无序列表后面的文字是 `分类功能的描述` , 根据分类功能加入的先后顺序排列, 下载本仓库, 直接以 `分类功能的描述` 为关键字, 全局搜索或者文件内搜索即可.
#### 分享自用的 Category 文件, 不定期更新, 如果你觉得好用, 请点个 ★Star 谢谢.
##### Category 文件  >>>>   详见路径 CategoryRepository/Category
___

## Category预览

___

> NSString

* 字符串加密
 * md5 sha1 sha256 sha512
 * hmacSHA1 hmacSHA256 hmacSHA512


* 获取当前路径的文件大小
* 获取 Cache 路径的完整路径地址
* 获取 Documents 路径的完整路径地址
* 获取 Tmp 路径的完整路径地址


* 将 NSTimeInterval 转换为分钟和秒钟格式化输出

___

> UIView

* 让UI控件直接访问Frame(CGRect)结构体内部

```objc
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
```

___

> UIImage

* 传入无需系统自动渲染的图片的名称 (字符串) , 返回原始的图片
* 根据图片名 (字符串) 生成圆形头像 (UIImage对象)

___

> NSDate

* 是否为今天
* 是否为昨天
* 是否为明天
* 是否为今年

___

> UIBarButtonItem

* 快速生成UIBarButtonItem类方法

___

> SingleClass

* 仅需 **4** 步搞定一个单例类(支持ARC和MRC), 详细使用说明见代码