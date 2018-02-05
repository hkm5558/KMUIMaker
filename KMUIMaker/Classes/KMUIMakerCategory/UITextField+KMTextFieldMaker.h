//
//  UITextField+KMTextFieldMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMTextFieldMaker.h"
@interface UITextField (KMTextFieldMaker)
+(UITextField *)km_makeTextField:(NS_NOESCAPE void(^)(KMTextFieldMaker *make))block;

-(void)km_makeTextField:(void(^)(KMTextFieldMaker *make))block;
@end
