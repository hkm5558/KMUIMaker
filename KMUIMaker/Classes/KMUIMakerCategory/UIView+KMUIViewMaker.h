//
//  UIView+KMUIViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMUIViewMaker.h"


@interface UIView (KMUIViewMaker)

+(UIView *)km_makeView:(NS_NOESCAPE void(^)(KMUIViewMaker *make))block;

-(void)km_makeView:(void(^)(KMUIViewMaker *make))block;

-(void)addToSuperView:(UIView *)superView;
@end
