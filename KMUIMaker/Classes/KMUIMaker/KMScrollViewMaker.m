//
//  KMScrollViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMScrollViewMaker.h"

@interface KMScrollViewMaker ()

@property (nonatomic, strong, readwrite) UIScrollView * scrollView;

@end

@implementation KMScrollViewMaker
- (instancetype)initWithScrollView:(UIScrollView *)scrollView {
    if (self = [super initWithView:scrollView]) {
        NSAssert(scrollView, @"scrollView cannot be nil");
        self.scrollView = scrollView;
    }
    return self;
}
-(KMScrollViewMaker *(^)(CGPoint))contentOffset {
    return ^ KMScrollViewMaker *(CGPoint contentOffset) {
        [_scrollView setContentOffset:contentOffset];
        return self;
    };
}
-(KMScrollViewMaker *(^)(CGSize))contentSize {
    return ^ KMScrollViewMaker *(CGSize contentSize) {
        [_scrollView setContentSize:contentSize];
        return self;
    };
}
-(KMScrollViewMaker *(^)(UIEdgeInsets))contentInset {
    return ^ KMScrollViewMaker *(UIEdgeInsets contentInset) {
        [_scrollView setContentInset:contentInset];
        return self;
    };
}
-(KMScrollViewMaker *(^)(id<UIScrollViewDelegate>))delegate {
    return ^ KMScrollViewMaker *(id<UIScrollViewDelegate> delegate) {
        [_scrollView setDelegate:delegate];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))directionalLockEnabled {
    return ^ KMScrollViewMaker *(BOOL directionalLockEnabled) {
        [_scrollView setDirectionalLockEnabled:directionalLockEnabled];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))bounces {
    return ^ KMScrollViewMaker *(BOOL bounces) {
        [_scrollView setBounces:bounces];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))alwaysBounceVertical {
    return ^ KMScrollViewMaker *(BOOL alwaysBounceVertical) {
        [_scrollView setAlwaysBounceVertical:alwaysBounceVertical];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))alwaysBounceHorizontal {
    return ^ KMScrollViewMaker *(BOOL alwaysBounceHorizontal) {
        [_scrollView setAlwaysBounceHorizontal:alwaysBounceHorizontal];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))pagingEnabled {
    return ^ KMScrollViewMaker *(BOOL pagingEnabled) {
        [_scrollView setPagingEnabled:pagingEnabled];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))scrollEnabled {
    return ^ KMScrollViewMaker *(BOOL scrollEnabled) {
        [_scrollView setScrollEnabled:scrollEnabled];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))showsHorizontalScrollIndicator {
    return ^ KMScrollViewMaker *(BOOL showsHorizontalScrollIndicator) {
        [_scrollView setShowsHorizontalScrollIndicator:showsHorizontalScrollIndicator];
        return self;
    };
}
-(KMScrollViewMaker *(^)(BOOL))showsVerticalScrollIndicator {
    return ^ KMScrollViewMaker *(BOOL showsVerticalScrollIndicator) {
        [_scrollView setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
        return self;
    };
}
-(KMScrollViewMaker *(^)(UIEdgeInsets))scrollIndicatorInsets {
    return ^ KMScrollViewMaker *(UIEdgeInsets scrollIndicatorInsets) {
        [_scrollView setScrollIndicatorInsets:scrollIndicatorInsets];
        return self;
    };
}
-(KMScrollViewMaker *(^)(UIScrollViewIndicatorStyle))indicatorStyle {
    return ^ KMScrollViewMaker *(UIScrollViewIndicatorStyle indicatorStyle) {
        [_scrollView setIndicatorStyle:indicatorStyle];
        return self;
    };
}
-(KMScrollViewMaker *(^)(CGFloat))decelerationRate {
    return ^ KMScrollViewMaker *(CGFloat decelerationRate) {
        [_scrollView setDecelerationRate:decelerationRate];
        return self;
    };
}

-(KMScrollViewMaker *(^)(CGFloat))minimumZoomScale {
    return ^ KMScrollViewMaker *(CGFloat minimumZoomScale) {
        [_scrollView setMinimumZoomScale:minimumZoomScale];
        return self;
    };
}
-(KMScrollViewMaker *(^)(CGFloat))maximumZoomScale {
    return ^ KMScrollViewMaker *(CGFloat maximumZoomScale) {
        [_scrollView setMaximumZoomScale:maximumZoomScale];
        return self;
    };
}

@end
