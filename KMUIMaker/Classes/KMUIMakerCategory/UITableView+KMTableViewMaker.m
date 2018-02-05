//
//  UITableView+KMTableViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UITableView+KMTableViewMaker.h"

@implementation UITableView (KMTableViewMaker)

+(UITableView *)km_makeTableView:(void(^)(KMTableViewMaker *make))block {
    return [self km_makeTableViewWithStyle:UITableViewStylePlain block:block];
}

+(UITableView *)km_makeTableViewWithStyle:(UITableViewStyle)style
                                    block:(void(^)(KMTableViewMaker *make))block {
    return [self km_makeTableViewWithFrame:CGRectZero style:style block:block];
}
+(UITableView *)km_makeTableViewWithFrame:(CGRect)frame
                                    style:(UITableViewStyle)style
                                    block:(NS_NOESCAPE void(^)(KMTableViewMaker *make))block {
    UITableView *tableView = [[UITableView alloc]initWithFrame:frame style:style];
    [tableView km_makeTableView:block];
    return tableView;
}

-(void)km_makeTableView:(void(^)(KMTableViewMaker *make))block {
    KMTableViewMaker *maker = [[KMTableViewMaker alloc]initWithTableView:self];
    block(maker);
}
@end
