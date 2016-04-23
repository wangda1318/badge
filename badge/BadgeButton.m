//
//  BadgeButton.m
//  badge
//
//  Created by 王东开 on 16/4/23.
//  Copyright © 2016年 王东开. All rights reserved.
//

#import "BadgeButton.h"

@interface BadgeButton()

@property (nonatomic, strong)UILabel *badgeLabel;

@property (nonatomic, strong)UIImageView *badgeImage;

@end

@implementation BadgeButton

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        
        

    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame position:(PositionType)position {
    
    if (self = [super initWithFrame:frame]) {
       
        [self addBadgeLabel:position];
        
    }
    return self;
}

- (void)addBadgeLabel:(PositionType)position {
    if (position == PositionTop) {
        self.badgeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width-6.5, -6.5, 14, 14)];

    } else if (position == UIBarPositionBottom) {
        self.badgeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width-9, self.frame.size.height-9, 14, 14)];
    }
    self.badgeLabel.layer.cornerRadius = 6.5;
    self.badgeLabel.layer.masksToBounds = YES;
    self.badgeLabel.font = [UIFont systemFontOfSize:10];
    self.badgeLabel.textAlignment = NSTextAlignmentCenter;
    self.badgeLabel.backgroundColor = [UIColor redColor];
    self.badgeLabel.textColor = [UIColor whiteColor];
    self.badgeLabel.hidden = YES;

    [self addSubview:self.badgeLabel];

    
}


- (void)setBadgeNumber:(int)badgeNumber {
    
    if (badgeNumber == 0) {
        self.badgeLabel.hidden = YES;
    } else {
        self.badgeLabel.hidden = NO;
        self.badgeLabel.text = [NSString stringWithFormat:@"%d",badgeNumber];
        _badgeNumber = badgeNumber;
        
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
