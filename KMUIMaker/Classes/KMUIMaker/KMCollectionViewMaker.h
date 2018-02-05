//
//  KMCollectionViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMScrollViewMaker.h"

@interface KMCollectionViewMaker : KMScrollViewMaker
- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_UNAVAILABLE;

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UICollectionView * collectionView;

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^collectionViewLayout)(UICollectionViewLayout * collectionViewLayout);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^delegate)(id <UICollectionViewDelegate> delegate);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^dataSource)(id <UICollectionViewDataSource> dataSource);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^prefetchDataSource)(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) NS_AVAILABLE_IOS(10_0);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^prefetchingEnabled)(BOOL prefetchingEnabled) NS_AVAILABLE_IOS(10_0);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^dragDelegate)(id <UICollectionViewDragDelegate> dragDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^dropDelegate)(id <UICollectionViewDropDelegate> dropDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^dragInteractionEnabled)(BOOL dragInteractionEnabled) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^reorderingCadence)(UICollectionViewReorderingCadence reorderingCadence) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^backgroundView)(UIView * backgroundView);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^registerClassForCellWithReuseIdentifier)(Class cellClass, NSString * identifier);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^registerNibForCellWithReuseIdentifier)(UINib * nib, NSString * identifier);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^registerClassForSupplementaryViewOfKindWithReuseIdentifier)(Class viewClass, NSString * elementKind, NSString * identifier);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^registerNibForSupplementaryViewOfKindWithReuseIdentifier)(UINib * nib, NSString * elementKind, NSString * identifier);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^allowsSelection)(BOOL allowsSelection);

@property (nonatomic, copy, readonly) KMCollectionViewMaker *(^allowsMultipleSelection)(BOOL allowsMultipleSelection);

@end
