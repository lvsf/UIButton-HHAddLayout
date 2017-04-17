//
//  HHButtonLayoutXIBView.m
//  UIButton-HHAddLayout
//
//  Created by YunSL on 17/4/17.
//  Copyright © 2017年 YunSL. All rights reserved.
//

#import "HHButtonLayoutXIBView.h"
#import "UIButton+HHAddLayout.h"

@implementation HHButtonLayoutXIBView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.xibButton setHh_layoutStyle:HHButtonLayoutStyleImageOnTheRight];
    [self.xibButton setHh_preferredMaxImageSize:CGSizeMake(80, 80)];
}

@end
