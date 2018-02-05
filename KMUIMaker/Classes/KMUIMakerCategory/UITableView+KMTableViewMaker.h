//
//  UITableView+KMTableViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMTableViewMaker.h"
@interface UITableView (KMTableViewMaker)

+(UITableView *)km_makeTableView:(void(^)(KMTableViewMaker *make))block;

+(UITableView *)km_makeTableViewWithStyle:(UITableViewStyle)style
                                    block:(void(^)(KMTableViewMaker *make))block;

+(UITableView *)km_makeTableViewWithFrame:(CGRect)frame
                                    style:(UITableViewStyle)style
                                    block:(NS_NOESCAPE void(^)(KMTableViewMaker *make))block;

-(void)km_makeTableView:(void(^)(KMTableViewMaker *make))block;
@end
