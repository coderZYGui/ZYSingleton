//
//  ViewController.m
//  Singleton
//
//  Created by 朝阳 on 2017/11/27.
//  Copyright © 2017年 sunny. All rights reserved.
//

#import "ViewController.h"
#import "ZYTool.h"
#import "ZYTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZYTool *t1 = [[ZYTool alloc] init];
    ZYTool *t2 = [ZYTool new];
    ZYTool *t3 = [ZYTool shareTool];
    ZYTool *t4 = [t1 copy];
    ZYTool *t5 = [t1 mutableCopy];
    
    NSLog(@"t1--%p,t2--%p,t3--%p,t4--%p,t5--%p",t1,t2,t3,t4,t5);
    NSLog(@"%@---%@",[[ZYTest alloc] init],[ZYTest new]);
    
#if __has_feature(objc_arc)
    // 条件满足 ARC
    NSLog(@"ARC");
#else
    NSLog(@"MRC");
#endif
    
}

@end
