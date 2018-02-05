//
//  UITextView+KMTextViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UITextView+KMTextViewMaker.h"

@implementation UITextView (KMTextViewMaker)
+(UITextView *)km_makeTextView:(NS_NOESCAPE void(^)(KMTextViewMaker *make))block {
    UITextView *textView = [UITextView new];
    [textView km_makeTextView:block];
    return textView;
}

-(void)km_makeTextView:(void(^)(KMTextViewMaker *make))block {
    KMTextViewMaker *maker = [[KMTextViewMaker alloc]initWithTextView:self];
    block(maker);
}
@end
