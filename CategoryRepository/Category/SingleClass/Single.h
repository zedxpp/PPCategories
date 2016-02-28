//
//  Single.h
//  单例-ARC-MRC
//
//  Created by SimleCp.
//  Copyright (c) 2016年 Swift520.com All rights reserved.
//
//  GitHub地址: https://github.com/SimleCp
//  博客地址: http://Swift520.com

/*
 使用方法:
 自定义类继承自NSObject
 导入本文件的头文件到自定义的类中
 在自定义类的.h和.m文件中分别使用下面的define 在(name)中写入类名即可
 如: 
 .h
 SingleInterface(ShoppingCart)
 
 .m
 SingleImplementation(ShoppingCart)
 */


#define SingleInterface(name) +(instancetype)share##name;

#if __has_feature(objc_arc)
// ARC
#define SingleImplementation(name)  +(instancetype)share##name \
{ \
    return [[self alloc] init]; \
} \
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
    static id instance; \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        instance = [super allocWithZone:zone]; \
    }); \
    return instance; \
} \
- (id)copyWithZone:(NSZone *)zone \
{ \
    return self; \
} \
- (id)mutableCopyWithZone:(NSZone *)zone \
{ \
    return self; \
}
#else
// MRC
#define SingleImplementation(name)  +(instancetype)share##name \
{ \
    return [[self alloc] init]; \
} \
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
    static id instance; \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        instance = [super allocWithZone:zone]; \
    }); \
    return instance; \
} \
- (id)copyWithZone:(NSZone *)zone \
{ \
    return self; \
} \
- (id)mutableCopyWithZone:(NSZone *)zone \
{ \
    return self; \
} \
- (oneway void)release \
{} \
- (instancetype)retain \
{ \
    return self; \
} \
- (NSUInteger)retainCount \
{ \
    return MAXFLOAT; \
}
#endif