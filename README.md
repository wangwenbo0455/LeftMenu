# LeftMenu
应朋友邀请，写了一个侧拉菜单，可点击，也可滑动拽出，左侧菜单界面支持自定义，动画视觉效果不错.
![gif](https://github.com/wangwenbo0455/LeftMenu/blob/master/cehua.gif)
把demoView 替换为自己定义的左侧界面就可以


`    MenuView * menu = [[MenuView alloc]initWithDependencyView:self.view MenuView:demoView coverViewAlpha:0.7 isLeftGesture:YES];`


可以执行下面的方法去唤出左侧菜单，也可以直接在屏幕中往右滑动唤出左侧菜单


` [self.menu show];`



具体的接口信息如下

`/**
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
- (void)hidenWithAnimation;`

