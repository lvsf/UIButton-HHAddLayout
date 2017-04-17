## UIButton-HHAddLayout
* 使用UIView扩展添加badge
## How to use
* code
``` objective-c
UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
[btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
[btn setTitle:@"任飘渺" forState:UIControlStateNormal];
[btn setImage:[UIImage imageNamed:@"任飘渺"] forState:UIControlStateNormal];
[btn setBackgroundColor:[UIColor orangeColor]];
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
[btn2 setHh_layoutStyle:HHButtonLayoutStyleImageOnTheLeft];
[btn2 setHh_verticalSpacing:10];
[btn2 setHh_preferredMaxImageSize:CGSizeMake(35, 35)];
[btn2 setHh_preferredMaxLayoutWidth:100];
[btn2 setHh_horizontalSpacing:10];
[btn2 setFrame:CGRectMake(CGRectGetMinX(btn1.frame), CGRectGetMaxY(btn1.frame) + 5, CGRectGetWidth(btn1.frame), CGRectGetHeight(btn.frame) - CGRectGetHeight(btn1.frame) - 5)];
[self.view addSubview:btn2];
```
* xib
``` objective-c
- (void)awakeFromNib {
    [super awakeFromNib];
    [self.xibButton setHh_layoutStyle:HHButtonLayoutStyleImageOnTheRight];
    [self.xibButton setHh_preferredMaxImageSize:CGSizeMake(80, 80)];
}
```
* UIBarButtonItem
``` objective-c
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
```
* 运行结果
<img alt="ScreenShot BarButtonItem" src="http://img1.ph.126.net/QZ_xfzDsjaECyO6eV7Ib-g==/6632016644236613308.png" width="320px"/>
