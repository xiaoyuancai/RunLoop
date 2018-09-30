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
    XYCThread* thread = [[XYCThread alloc]initWithBlock:^{
        
        [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
            NSLog(@"hello");
        }];
        NSLog(@"running");
        [[NSRunLoop currentRunLoop]run];
    }];
    [thread start];
    
}


@end
