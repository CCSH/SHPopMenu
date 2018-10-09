//
//  SHPopMenu.h
//  SHPopMenuDemo
//
//  Created by hh on 15/12/22.
//  Copyright © 2015年 陈胜辉. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  下拉菜单
 **/
typedef enum {
    SHPopMenuArrow_center,// 中间
    SHPopMenuArrow_left,//左
    SHPopMenuArrow_right//右
} SHPopMenuArrow;

@interface SHPopMenu : UIView

#pragma mark - 必须设置
//内容
@property (nonatomic, copy) NSArray *mList;

#pragma mark - 根据需求设置
//宽度（不用赋值，内部有计算）
@property (nonatomic, assign) CGFloat menuW;
//是否有遮罩
@property (nonatomic, assign) BOOL dimBackground;
//方向(默认 右)
@property (nonatomic, assign) SHPopMenuArrow arrowPosition;
//内容高度（默认 44）
@property (nonatomic, assign) CGFloat contentH;
//箭头图片（有默认）
@property (nonatomic, copy) UIImage *arrowImage;

//内部文字设置
//字体（默认： [UIFont systemFontOfSize:14]）
@property (nonatomic, copy) UIFont *font;
//字体颜色（默认：[UIColor whiteColor]）
@property (nonatomic, copy) UIColor *textColor;
//分割线颜色（默认 [UIColor whiteColor]）
@property (nonatomic, copy) UIColor *separatorColor;

//内部容器设置（设置一个就好）
//背景颜色（默认 42.42.42）
@property (nonatomic, copy) UIColor *contentColor;
//背景图片
@property (nonatomic, copy) UIImage *contentImage;

/**
 *  显示菜单
 */
- (void)showInRectX:(int)x rectY:(int)y block:(void (^)(SHPopMenu *menu,NSInteger index))block;

/**
 *  关闭菜单
 */
- (void)dismiss;

@end
