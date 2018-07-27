//
//  ViewController.m
//  RunTime方法交换Demo
//
//  Created by ZSMAC on 2018/7/26.
//  Copyright © 2018年 张帅. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    view.backgroundColor=[UIColor redColor];
    [self.view addSubview:view];
    
    UIView * view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    view2.backgroundColor=[UIColor redColor];
    [self.view addSubview:view2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
