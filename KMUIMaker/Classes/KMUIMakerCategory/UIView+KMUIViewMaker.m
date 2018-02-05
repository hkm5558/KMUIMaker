//
//  UIView+KMUIViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UIView+KMUIViewMaker.h"

@implementation UIView (KMUIViewMaker)


+(UIView *)km_makeView:(NS_NOESCAPE void(^)(KMUIViewMaker *make))block {
    UIView *view = [UIView new];
    [view km_makeView:block];
    return view;
}

-(void)km_makeView:(void(^)(KMUIViewMaker *make))block {
    KMUIViewMaker *maker = [[KMUIViewMaker alloc]initWithView:self];
    block(maker);
}
-(void)addToSuperView:(UIView *)superView {
    [superView addSubview:self];
}
@end
