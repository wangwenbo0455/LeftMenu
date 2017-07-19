//
//  MenuView.h
//  BeasyFly
//
//  Created by Nathan on 16/8/23.
//  Copyright © 2016年 Nathan. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MenuView : UIView


/**
 *  初始化方法
 *
 *  @param dependencyView 传入需要滑出菜单的控制器的view
 *  @param leftmenuView   传入需要显示的菜单的view
 *  @param coverViewAlpha CGFloat 右侧阴影度
 *  @param isLeftGesture  是开启侧滑
 *  @return self
 */
- (instancetype)initWithDependencyView:(UIView *)dependencyView MenuView:(UIView *)leftmenuView coverViewAlpha:(CGFloat)coverViewAlpha isLeftGesture:(BOOL)isLeftGesture;
    
/**
 *  展开菜单，可放进点击事件内
 */
- (void)show;
/**
 *  关闭菜单不带动画效果 用于点击菜单选项后
 */
- (void)hidenWithoutAnimation;
/**
 *  关闭菜单带动画效果 用于用户手动关闭
 */
- (void)hidenWithAnimation;

@end
