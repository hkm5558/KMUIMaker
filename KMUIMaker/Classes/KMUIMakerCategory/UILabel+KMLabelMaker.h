//
//  UILabel+KMLabelMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMLabelMaker.h"
@interface UILabel (KMLabelMaker)
+(UILabel *)km_makeLabel:(NS_NOESCAPE void(^)(KMLabelMaker *make))block;

-(void)km_makeLabel:(void(^)(KMLabelMaker *make))block;
@end
