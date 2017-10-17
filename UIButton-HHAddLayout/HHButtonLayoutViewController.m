//
//  HHButtonLayoutViewController.m
//  UIButton-HHAddLayout
//
//  Created by YunSL on 17/4/17.
//  Copyright © 2017年 YunSL. All rights reserved.
//

#import "HHButtonLayoutViewController.h"
#import "HHButtonLayoutXIBView.h"
#import "UIButton+HHAddLayout.h"

@interface HHButtonLayoutViewController ()
@property (nonatomic,strong) HHButtonLayoutXIBView *xibView;
@end

@implementation HHButtonLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [btn setTitle:@"任飘渺" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"任飘渺"] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn setContentEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    [btn setImageEdgeInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    [btn setHh_layoutStyle:HHButtonLayoutStyleImageOnTheTop];
    [btn sizeToFit];
    [btn setFrame:(CGRect){CGPointMake(10, 75),btn.bounds.size}];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1.titleLabel setNumberOfLines:0];
    [btn1 setTitle:@"秋水浮萍任飘渺" forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"任飘渺"] forState:UIControlStateNormal];
    [btn1 setBackgroundColor:[UIColor lightGrayColor]];
    [btn1 setContentEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    [btn1 setHh_layoutStyle:HHButtonLayoutStyleImageOnTheBottom];
    [btn1 setHh_preferredMaxImageSize:CGSizeMake(35, 35)];
    [btn1 setHh_verticalSpacing:10];
    [btn1 setHh_preferredMaxLayoutWidth:105];
    [btn1 sizeToFit];
    [btn1 setFrame:(CGRect){CGPointMake(CGRectGetMaxX(btn.frame) + 5, 75),btn1.bounds.size}];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2.titleLabel setNumberOfLines:0];
    [btn2.titleLabel setFont:[UIFont systemFontOfSize:12]];
    [btn2 setTitle:@"秋水浮萍任飘渺" forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"任飘渺"] forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor lightGrayColor]];
    [btn2 setContentEdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    [btn2 setHh_layoutStyle:HHButtonLayoutStyleImageOnTheTop];
    [btn2 setHh_verticalSpacing:10];
    [btn2 setHh_preferredMaxImageSize:CGSizeMake(35, 35)];
    [btn2 setHh_preferredMaxLayoutWidth:100];
    [btn2 setHh_horizontalSpacing:10];
    [btn2 setContentVerticalAlignment:UIControlContentVerticalAlignmentBottom];
    [btn2 setFrame:CGRectMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn1.frame) + 5, CGRectGetWidth(btn1.frame), CGRectGetHeight(btn.frame) - CGRectGetHeight(btn1.frame) - 5)];
    [self.view addSubview:btn2];
    
    [self.xibView setFrame:CGRectMake(10, CGRectGetMaxY(btn.frame) + 5, CGRectGetWidth(self.view.frame) - 20, 150)];
    [self.view addSubview:self.xibView];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:({
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:12]];
        [btn setTitle:@"任飘渺" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"任飘渺"] forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor orangeColor]];
        [btn setHh_layoutStyle:HHButtonLayoutStyleImageOnTheRight];
        [btn setHh_preferredMaxImageSize:CGSizeMake(25, 25)];
        [btn sizeToFit];
        btn;
    })];
}

- (HHButtonLayoutXIBView *)xibView {
    return _xibView?:({
        _xibView = [[NSBundle mainBundle] loadNibNamed:@"HHButtonLayoutXIBView" owner:nil options:nil].firstObject;
        _xibView;
    });
}

@end
