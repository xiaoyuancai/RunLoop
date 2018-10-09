//
//  ViewController.m
//  Runloop
//
//  Created by Yuan Le on 2018/9/30.
//  Copyright © 2018年 Yuan Le. All rights reserved.
//

#import "ViewController.h"
#import "XYCThread.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //timer不会执行
//   XYCThread* thread = [[XYCThread alloc]initWithBlock:^{
//
//        [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//            NSLog(@"hello");
//        }];
//       NSLog(@"running");
//    }];
//    [thread start];
    
    //timer会执行
//    XYCThread* thread = [[XYCThread alloc]initWithBlock:^{
//
//        [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//            NSLog(@"hello");
//        }];
//        NSLog(@"running");
//        [[NSRunLoop currentRunLoop]run];
//    }];
//    [thread start];
    
    //查看当时runloop信息
    CFRunLoopRef ref = CFRunLoopGetCurrent();
    CFRunLoopMode mode = CFRunLoopCopyCurrentMode(ref);
    NSLog(@"mode = %@",mode);
//    CFRelease(ref);
    //通过输出我们可以知道mode有四种系统模式：
    /**
     UITrackingRunLoopMode,//跟踪UI界面，比如scrollview滑动，runloop会自动切换到此种模式
     GSEventReceiveRunLoopMode,//接收系统事件的模式，用不到
     kCFRunLoopDefaultMode,//默认模式
     kCFRunLoopCommonModes //一个集合模式，不太好解释，可以看下官方（https://developer.apple.com/documentation/corefoundation/kcfrunloopcommonmodes）
     */
    CFArrayRef arry = CFRunLoopCopyAllModes(ref);
    NSLog(@"arrary = %@",arry);
    
}

@end
