//
//  UIButton+KMButtonMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UIButton+KMButtonMaker.h"

@implementation UIButton (KMButtonMaker)

+(UIButton *)km_makeButtonWithType:(UIButtonType)buttonType
                             block:(NS_NOESCAPE void(^)(KMButtonMaker *make))block {
    UIButton *button = [UIButton buttonWithType:buttonType];
    [button km_makeButton:block];
    return button;
}

+(UIButton *)km_makeButton:(void(^)(KMButtonMaker *make))block {
    return [UIButton km_makeButtonWithType:UIButtonTypeCustom block:block];
}

-(void)km_makeButton:(void(^)(KMButtonMaker *make))block {
    KMButtonMaker *maker = [[KMButtonMaker alloc]initWithButton:self];
    block(maker);
}
@end
