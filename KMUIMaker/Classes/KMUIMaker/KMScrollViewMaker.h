//
//  KMScrollViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIViewMaker.h"

@interface KMScrollViewMaker : KMUIViewMaker

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;

- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UIScrollView * scrollView;

@property (nonatomic, copy, readonly) KMScrollViewMaker *(^contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^contentInset)(UIEdgeInsets contentInset);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^delegate)(id<UIScrollViewDelegate> delegate);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^directionalLockEnabled)(BOOL directionalLockEnabled);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^scrollEnabled)(BOOL scrollEnabled);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^scrollIndicatorInsets)(UIEdgeInsets scrollIndicatorInsets);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^indicatorStyle)(UIScrollViewIndicatorStyle indicatorStyle);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^decelerationRate)(CGFloat decelerationRate);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^minimumZoomScale)(CGFloat minimumZoomScale);
@property (nonatomic, copy, readonly) KMScrollViewMaker *(^maximumZoomScale)(CGFloat maximumZoomScale);


@end
