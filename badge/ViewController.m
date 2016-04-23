//
//  ViewController.m
//  badge
//
//  Created by 王东开 on 16/4/23.
//  Copyright © 2016年 王东开. All rights reserved.
//

#import "ViewController.h"
#import "BadgeButton.h"

@interface ViewController ()

@property (nonatomic, strong) BadgeButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button = [[BadgeButton alloc] initWithFrame:CGRectMake(50, 50, 30, 30) position:PositionTop];
    self.button.badgeNumber = 0;
    self.button.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.button];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(begin) userInfo:nil repeats:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)begin {
    
    self.button.badgeNumber ++;
}
@end
