//
//  UILabel+KMLabelMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UILabel+KMLabelMaker.h"

@implementation UILabel (KMLabelMaker)
+(UILabel *)km_makeLabel:(NS_NOESCAPE void(^)(KMLabelMaker *make))block {
    UILabel *label = [UILabel new];
    [label km_makeLabel:block];
    return label;
}

-(void)km_makeLabel:(void(^)(KMLabelMaker *make))block {
    KMLabelMaker *maker = [[KMLabelMaker alloc]initWithLabel:self];
    block(maker);
}
@end
