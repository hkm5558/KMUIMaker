//
//  UITextView+KMTextViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMTextViewMaker.h"
@interface UITextView (KMTextViewMaker)
+(UITextView *)km_makeTextView:(NS_NOESCAPE void(^)(KMTextViewMaker *make))block;

-(void)km_makeTextView:(void(^)(KMTextViewMaker *make))block;
@end
