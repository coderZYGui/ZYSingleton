//
//  ZYTool.h
//  Singleton
//
//  Created by 朝阳 on 2017/11/27.
//  Copyright © 2017年 sunny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYSingleton.h"
@interface ZYTool : NSObject<NSCopying,NSMutableCopying>

// 类方法
// 1. 方便访问
// 2. 标明身份
// 3. 注意: share+类名 | default+类名
//+ (instancetype)shareTool;

ZYSingleH(Tool)

@end
