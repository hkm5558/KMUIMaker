//
//  UIImageView+KMImageViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMImageViewMaker.h"
@interface UIImageView (KMImageViewMaker)
+(UIImageView *)km_makeImageView:(NS_NOESCAPE void(^)(KMImageViewMaker *make))block;

-(void)km_makeImageView:(void(^)(KMImageViewMaker *make))block;
@end
