//
//  ViewController.m
//  PlaceholderView
//
//  Created by charls on 2016/11/30.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "ViewController.h"
#import "PlaceholderView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // ------------------------------------------- Begin ---------------------------------------------------- //
    CGRect screen = [UIScreen mainScreen].bounds;
    PlaceholderView *contentView = [[PlaceholderView alloc] initWithFrame:CGRectMake(10, 100, screen.size.width - 20, 200)];
    contentView.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
    contentView.placeholder = @"占位文字";
    contentView.placeholderColor = [UIColor grayColor];
    [self.view addSubview:contentView];
    // ------------------------------------------- End ---------------------------------------------------- //
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
