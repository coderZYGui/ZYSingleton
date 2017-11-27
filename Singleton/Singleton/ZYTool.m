//
//  ZYTool.m
//  Singleton
//
//  Created by 朝阳 on 2017/11/27.
//  Copyright © 2017年 sunny. All rights reserved.
//

#import "ZYTool.h"

@implementation ZYTool

ZYSingleM(Tool)

/*
// alloc方法内部 会默认调用allocWithZone
static id _instance;
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    // 防止多线程并发问题
    // 加互斥锁
//    if (!_instance) {
//        _instance = [super allocWithZone:zone];
//    }
//    return _instance;
    
    // 使用GCD的一次函数,应用程序生命周期只使用一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
    
}

+ (instancetype)shareTool
{
    return [[self alloc] init];
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    return _instance;
}

#if __has_feature(objc_arc)
//条件满足 ARC
#else

//MRC
- (oneway void)release
{
    
}
- (instancetype)retain
{
    return _instance;
}
- (NSUInteger)retainCount
{
    return MAXFLOAT;
}

#endif
 
 */

@end
