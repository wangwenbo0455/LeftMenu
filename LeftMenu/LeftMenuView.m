//
//  LeftMenuViewDemo.m
//  BeasyFly
//
//  Created by Nathan on 16/8/23.
//  Copyright © 2016年 Nathan. All rights reserved.
//
#define ImageviewWidth    18
#define Frame_Width       self.frame.size.width//200

#import "LeftMenuView.h"
#import "LeftTableViewCell.h"
@interface LeftMenuView ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic ,strong) UITableView    *contentTableView;


@end

@implementation LeftMenuView

- (instancetype)initWithFrame:(CGRect)frame{
    
    if(self = [super initWithFrame:frame]){
        [self initView];
    }
    return  self;
}



- (void)initView{
    
    self.backgroundColor = [UIColor whiteColor];
    //添加头部
    UIView *headerView     = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Frame_Width, 130)];
    [headerView setBackgroundColor:[UIColor whiteColor]];
    
    [self addSubview:headerView];

    //中间tableview
    UITableView *contentTableView        = [[UITableView alloc]initWithFrame:CGRectMake(0, headerView.frame.size.height+15, Frame_Width, self.frame.size.height - headerView.frame.size.height - 50)
                                                                       style:UITableViewStylePlain];
    contentTableView.dataSource          = self;
    contentTableView.delegate            = self;
    contentTableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    [contentTableView setBackgroundColor:[UIColor clearColor]];
    contentTableView.separatorStyle      = UITableViewCellSeparatorStyleNone;
    contentTableView.tableFooterView = [UIView new];
    self.contentTableView = contentTableView;
    [self addSubview:contentTableView];
    
    //添加尾部
    //初始化一个view就行
}


#pragma mark - tableView delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 7;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 45 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *OneCellIdentifier = @"LeftTableViewCell";
    
    LeftTableViewCell *cell = (LeftTableViewCell *)[tableView dequeueReusableCellWithIdentifier:OneCellIdentifier];
    if(!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"LeftTableViewCell" owner:nil options:nil]firstObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    [cell setBackgroundColor:[UIColor clearColor]];
    cell.hidden = NO;
   cell.titleForName.text = @"你自己定义cell吧";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if([self.customDelegate respondsToSelector:@selector(leftMenuViewClick:)]){
        [self.customDelegate leftMenuViewClick:indexPath.row];
    }
    
}



@end
