//
//  KMCollectionViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMCollectionViewMaker.h"
@interface KMCollectionViewMaker ()

@property (nonatomic, strong, readwrite) UICollectionView * collectionView;

@end
@implementation KMCollectionViewMaker
- (instancetype)initWithCollectionView:(UICollectionView *)collectionView {
    if (self = [super initWithScrollView:collectionView]) {
        NSAssert(collectionView, @"collectionView cannot be nil");
        self.collectionView = collectionView;
    }
    return self;
}
-(KMCollectionViewMaker *(^)(UICollectionViewLayout *))collectionViewLayout {
    return ^ KMCollectionViewMaker *(UICollectionViewLayout * collectionViewLayout) {
        [_collectionView setCollectionViewLayout:collectionViewLayout];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(id<UICollectionViewDelegate>))delegate {
    return ^ KMCollectionViewMaker *(id<UICollectionViewDelegate> delegate) {
        [_collectionView setDelegate:delegate];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(id<UICollectionViewDataSource>))dataSource {
    return ^ KMCollectionViewMaker *(id<UICollectionViewDataSource> dataSource) {
        [_collectionView setDataSource:dataSource];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(id<UICollectionViewDataSourcePrefetching>))prefetchDataSource {
    return ^ KMCollectionViewMaker *(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) {
        [_collectionView setPrefetchDataSource:prefetchDataSource];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(BOOL))prefetchingEnabled {
    return ^ KMCollectionViewMaker *(BOOL prefetchingEnabled) {
        [_collectionView setPrefetchingEnabled:prefetchingEnabled];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(id<UICollectionViewDragDelegate>))dragDelegate {
    return ^ KMCollectionViewMaker *(id<UICollectionViewDragDelegate> dragDelegate) {
        [_collectionView setDragDelegate:dragDelegate];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(id<UICollectionViewDropDelegate>))dropDelegate {
    return ^ KMCollectionViewMaker *(id<UICollectionViewDropDelegate> dropDelegate) {
        [_collectionView setDropDelegate:dropDelegate];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(BOOL))dragInteractionEnabled {
    return ^ KMCollectionViewMaker *(BOOL dragInteractionEnabled) {
        [_collectionView setDragInteractionEnabled:dragInteractionEnabled];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(UICollectionViewReorderingCadence))reorderingCadence {
    return ^ KMCollectionViewMaker *(UICollectionViewReorderingCadence reorderingCadence) {
        [_collectionView setReorderingCadence:reorderingCadence];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(UIView *))backgroundView {
    return ^ KMCollectionViewMaker *(UIView * backgroundView) {
        [_collectionView setBackgroundView:backgroundView];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(Class, NSString *))registerClassForCellWithReuseIdentifier {
    return ^ KMCollectionViewMaker *(Class cellClass, NSString * identifier) {
        [_collectionView registerClass:cellClass forCellWithReuseIdentifier:identifier];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(UINib *, NSString *))registerNibForCellWithReuseIdentifier {
    return ^ KMCollectionViewMaker *(UINib * nib, NSString * identifier) {
        [_collectionView registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(Class, NSString *, NSString *))registerClassForSupplementaryViewOfKindWithReuseIdentifier {
    return ^ KMCollectionViewMaker *(Class viewClass, NSString * elementKind, NSString * identifier) {
        [_collectionView registerClass:viewClass
            forSupplementaryViewOfKind:elementKind
                   withReuseIdentifier:identifier];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(UINib *, NSString *, NSString *))registerNibForSupplementaryViewOfKindWithReuseIdentifier {
    return ^ KMCollectionViewMaker *(UINib * nib, NSString * elementKind, NSString * identifier) {
        [_collectionView registerNib:nib
          forSupplementaryViewOfKind:elementKind
                 withReuseIdentifier:identifier];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(BOOL))allowsSelection {
    return ^ KMCollectionViewMaker *(BOOL allowsSelection) {
        [_collectionView setAllowsSelection:allowsSelection];
        return self;
    };
}
-(KMCollectionViewMaker *(^)(BOOL))allowsMultipleSelection {
    return ^ KMCollectionViewMaker *(BOOL allowsMultipleSelection) {
        [_collectionView setAllowsMultipleSelection:allowsMultipleSelection];
        return self;
    };
}
@end
