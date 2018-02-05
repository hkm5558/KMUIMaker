//
//  KMViewController.m
//  KMUIMaker
//
//  Created by hkm5558 on 02/03/2018.
//  Copyright (c) 2018 hkm5558. All rights reserved.
//

#import "KMViewController.h"
#import "KMUIMakerHeader.h"
@interface KMViewController ()

@end

@implementation KMViewController
-(void)dealloc {
    NSLog(@"%@     %s",self.title, __func__);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.title = [NSString stringWithFormat:@"VC - %ld",self.navigationController.viewControllers.count];
    
    [UIView km_makeView:^(KMUIViewMaker *make) {
        make
        .frame(CGRectMake(100, 84, 150, 130))
        .backgroundColor([UIColor lightGrayColor])
        .cornerRadius(5)
        .borderWidth(1)
        .borderColor([UIColor cyanColor])
        .clipsToBounds(YES)
        .addToSuperView(self.view)
        .addSubview([UILabel km_makeLabel:^(KMLabelMaker *make) {
            make
            .font([UIFont systemFontOfSize:11])
            .text(@"我是Label")
            .textColor([UIColor redColor])
            .textAlignment(NSTextAlignmentRight)
            .userInteractionEnabled(YES)
            .addGestureRecognizer([[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapLabel:)])
            .frame(CGRectMake(10, 10, 80, 50))
            .backgroundColor([UIColor colorWithRed:0.1 green:0.1 blue:0.7 alpha:0.7]);
        }]);
    }];
    
    [UIButton km_makeButton:^(KMButtonMaker *make) {
        make
        .titleForState(@"我是Button", UIControlStateNormal)
        .titleColorForState([UIColor whiteColor], UIControlStateNormal)
        .addTargetAndActionForControlEvents(self, @selector(clickButton:), UIControlEventTouchUpInside)
        .frame(CGRectMake(100, 100, 200, 100))
        .center(self.view.center)
        .backgroundColor([UIColor colorWithRed:1 green:0 blue:0 alpha:0.7])
        .cornerRadius(8)
        .shadowRadius(3)
        .shadowOpacity(1)
        .shadowColor([UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.7])
        .shadowOffset(CGSizeMake(3, 3))
        .addToSuperView(self.view);
    }];
}
    
-(void)tapLabel:(id)sender {
    NSLog(@"sender = %@",sender);
    NSLog(@"self retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self)));
}
    
-(void)clickButton:(id)sender {
    NSLog(@"sender = %@",sender);
    NSLog(@"self retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self)));
}

@end
