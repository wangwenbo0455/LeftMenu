//
//  ViewController.m
//  LeftMenu
//
//  Created by 王文博 on 2017/7/19.
//  Copyright © 2017年 王文博. All rights reserved.
//

#import "ViewController.h"
#import "LeftMenuView.h"
#import "MenuView.h"
@interface ViewController ()<HomeMenuViewDelegate>
@property (nonatomic ,strong) MenuView   * menu;

@end

@implementation ViewController

- (void)viewDidLoad {
    UIButton * leftButton = [UIButton buttonWithType:UIButtonTypeSystem];
    leftButton.frame = CGRectMake(12, 100, 100, 100);
    [leftButton addTarget:self action:@selector(leftButtonTouch:) forControlEvents:UIControlEventTouchUpInside];
    
    [leftButton setTitle:@"呵呵哒" forState:UIControlStateNormal];
    
    [self.view addSubview:leftButton];
    
    
    // 自己创建的 左侧View
    LeftMenuView *demo = [[LeftMenuView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width * 0.7, [[UIScreen mainScreen] bounds].size.height)];
    demo.customDelegate = self;
    demo.backgroundColor = [UIColor colorWithRed:96.0/255 green:93.0/255 blue:98.0/255 alpha:1];
    // 把自己做的view传进来就可以了
    self.menu = [[MenuView alloc]initWithDependencyView:self.view MenuView:demo coverViewAlpha:0.7 isLeftGesture:YES];

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)leftButtonTouch:(UIButton *)sender
{
    [self.menu show];
}

- (void)leftMenuViewClick:(NSInteger)tag{
    NSLog(@"谢谢点击");
    [self.menu hidenWithAnimation];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
