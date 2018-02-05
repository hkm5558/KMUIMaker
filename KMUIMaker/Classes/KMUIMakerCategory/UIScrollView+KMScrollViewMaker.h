//
//  UIScrollView+KMScrollViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMScrollViewMaker.h"
@interface UIScrollView (KMScrollViewMaker)
+(UIScrollView *)km_makeScrollView:(NS_NOESCAPE void(^)(KMScrollViewMaker *make))block;

-(void)km_makeScrollView:(void(^)(KMScrollViewMaker *make))block;
@end
