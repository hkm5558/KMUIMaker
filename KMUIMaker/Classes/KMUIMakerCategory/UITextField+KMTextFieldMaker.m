//
//  UITextField+KMTextFieldMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UITextField+KMTextFieldMaker.h"

@implementation UITextField (KMTextFieldMaker)
+(UITextField *)km_makeTextField:(NS_NOESCAPE void(^)(KMTextFieldMaker *make))block {
    UITextField *textField = [UITextField new];
    [textField km_makeTextField:block];
    return textField;
}

-(void)km_makeTextField:(void(^)(KMTextFieldMaker *make))block {
    KMTextFieldMaker *maker = [[KMTextFieldMaker alloc]initWithTextField:self];
    block(maker);
}
@end
