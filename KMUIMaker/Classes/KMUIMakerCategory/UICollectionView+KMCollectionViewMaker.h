//
//  UICollectionView+KMCollectionViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMCollectionViewMaker.h"
@interface UICollectionView (KMCollectionViewMaker)

+(UICollectionView *)km_makeCollectionView:(void(^)(KMCollectionViewMaker *make))block;

+(UICollectionView *)km_makeCollectionViewWithFrame:(CGRect)frame
                                              block:(void(^)(KMCollectionViewMaker *make))block;

+(UICollectionView *)km_makeCollectionViewWithFrame:(CGRect)frame
                               collectionViewLayout:(UICollectionViewLayout *)layout
                                              block:(NS_NOESCAPE void(^)(KMCollectionViewMaker *make))block;

-(void)km_makeCollectionView:(void(^)(KMCollectionViewMaker *make))block;
@end
