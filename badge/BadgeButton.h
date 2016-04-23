//
//  BadgeButton.h
//  badge
//
//  Created by 王东开 on 16/4/23.
//  Copyright © 2016年 王东开. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, PositionType){
    PositionTop = 0,
    PositionBottom
};
@interface BadgeButton : UIButton

@property (nonatomic, assign) int badgeNumber;

- (instancetype)initWithFrame:(CGRect)frame position:(PositionType)position;

@end
