//
//  UIButton+KMButtonMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMButtonMaker.h"
@interface UIButton (KMButtonMaker)

+(UIButton *)km_makeButtonWithType:(UIButtonType)buttonType
                             block:(NS_NOESCAPE void(^)(KMButtonMaker *make))block;

+(UIButton *)km_makeButton:(void(^)(KMButtonMaker *make))block;

-(void)km_makeButton:(void(^)(KMButtonMaker *make))block;
@end
