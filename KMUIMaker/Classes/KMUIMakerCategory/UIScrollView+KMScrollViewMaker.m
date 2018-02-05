//
//  UIScrollView+KMScrollViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UIScrollView+KMScrollViewMaker.h"

@implementation UIScrollView (KMScrollViewMaker)
+(UIScrollView *)km_makeScrollView:(NS_NOESCAPE void(^)(KMScrollViewMaker *make))block {
    UIScrollView *scrollView = [UIScrollView new];
    [scrollView km_makeScrollView:block];
    return scrollView;
}

-(void)km_makeScrollView:(void(^)(KMScrollViewMaker *make))block {
    KMScrollViewMaker *maker = [[KMScrollViewMaker alloc]initWithScrollView:self];
    block(maker);
}
@end
