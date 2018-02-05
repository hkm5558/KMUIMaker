//
//  UICollectionView+KMCollectionViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "UICollectionView+KMCollectionViewMaker.h"

@implementation UICollectionView (KMCollectionViewMaker)

+(UICollectionView *)km_makeCollectionView:(void(^)(KMCollectionViewMaker *make))block {
    return [self km_makeCollectionViewWithFrame:CGRectZero block:block];
}

+(UICollectionView *)km_makeCollectionViewWithFrame:(CGRect)frame
                                              block:(void(^)(KMCollectionViewMaker *make))block {
    return [self km_makeCollectionViewWithFrame:frame
                           collectionViewLayout:[UICollectionViewLayout new]
                                          block:block];
}

+(UICollectionView *)km_makeCollectionViewWithFrame:(CGRect)frame
                               collectionViewLayout:(UICollectionViewLayout *)layout
                                              block:(NS_NOESCAPE void(^)(KMCollectionViewMaker *make))block {
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:frame collectionViewLayout:layout];
    [collectionView km_makeCollectionView:block];
    return collectionView;
}

-(void)km_makeCollectionView:(void(^)(KMCollectionViewMaker *make))block {
    KMCollectionViewMaker *maker = [[KMCollectionViewMaker alloc]initWithCollectionView:self];
    block(maker);
}

@end
