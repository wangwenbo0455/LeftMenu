//
//  LeftMenuView.h
//  BeasyFly
//
//  Created by Nathan on 16/8/23.
//  Copyright © 2016年 Nathan. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol HomeMenuViewDelegate <NSObject>


- (void)leftMenuViewClick:(NSInteger)tag;


@end

@interface LeftMenuView : UIView

@property (nonatomic ,weak) id <HomeMenuViewDelegate> customDelegate;

@end
