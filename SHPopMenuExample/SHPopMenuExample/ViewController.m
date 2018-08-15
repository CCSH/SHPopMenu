//
//  ViewController.m
//  SHPopMenu
//
//  Created by CSH on 2017/10/24.
//  Copyright © 2017年 CSH. All rights reserved.
//

#import "ViewController.h"
#import "SHPopMenu.h"

@interface ViewController ()

//下拉气泡
@property (nonatomic, strong) SHPopMenu *menu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    //显示菜单
    [self.menu showInRectX:10 rectY:64 block:^(SHPopMenu *menu, NSInteger index) {
        //消失
        [menu dismiss];
        
        NSLog(@"点击了 --- %ld",(long)index);
    }];
}

- (SHPopMenu *)menu{
    
    if (!_menu) {
        _menu = [[SHPopMenu alloc]init];
        _menu.dimBackground = YES;
        _menu.arrowPosition = SHPopMenuArrowPositionLeft;
        _menu.contentH = 40;
        
        //图片+文字
        _menu.mList = @[@{@"icon":@"发起群聊"},@{@"icon":@"添加朋友"},@{@"icon":@"扫一扫"},@{@"icon":@"收付款"}];
    }
    return _menu;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
