//
//  UIImageView+KMImageViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UIImageView+KMImageViewMaker.h"

@implementation UIImageView (KMImageViewMaker)

+(UIImageView *)km_makeImageView:(NS_NOESCAPE void(^)(KMImageViewMaker *make))block {
    UIImageView *imageView = [UIImageView new];
    [imageView km_makeImageView:block];
    return imageView;
}

-(void)km_makeImageView:(void(^)(KMImageViewMaker *make))block {
    KMImageViewMaker *maker = [[KMImageViewMaker alloc]initWithImageView:self];
    block(maker);
}
@end
