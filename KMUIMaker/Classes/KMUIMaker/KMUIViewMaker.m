//
//  KMUIViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIViewMaker.h"

@interface KMUIViewMaker ()

@property (nonatomic, strong, readwrite) UIView * view;

@end

@implementation KMUIViewMaker

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        NSAssert(view, @"View cannot be nil");
        self.view = view;
    }
    
    return self;
}
-(KMUIViewMaker *(^)(BOOL))userInteractionEnabled {
    return ^ KMUIViewMaker *(BOOL userInteractionEnabled) {
        [_view setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}
-(KMUIViewMaker *(^)(NSInteger))tag {
    return ^ KMUIViewMaker *(NSInteger tag) {
        [_view setTag:tag];
        return self;
    };
}

-(KMUIViewMaker *(^)(CGRect))frame {
    return ^ KMUIViewMaker *(CGRect frame) {
        [_view setFrame:frame];
        return self;
    };
}

-(KMUIViewMaker *(^)(CGPoint))center {
    return ^ KMUIViewMaker *(CGPoint center) {
        [_view setCenter:center];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGAffineTransform))transform {
    return ^ KMUIViewMaker *(CGAffineTransform transform) {
        [_view setTransform:transform];
        return self;
    };
}
-(KMUIViewMaker *(^)(BOOL))multipleTouchEnabled {
    return ^ KMUIViewMaker *(BOOL multipleTouchEnabled) {
        [_view setMultipleTouchEnabled:multipleTouchEnabled];
        return self;
    };
}
-(KMUIViewMaker *(^)(BOOL))exclusiveTouch {
    return ^ KMUIViewMaker *(BOOL exclusiveTouch) {
        [_view setExclusiveTouch:exclusiveTouch];
        return self;
    };
}
-(KMUIViewMaker *(^)(BOOL))autoresizesSubviews {
    return ^ KMUIViewMaker *(BOOL autoresizesSubviews) {
        [_view setAutoresizingMask:autoresizesSubviews];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIViewAutoresizing))autoresizingMask {
    return ^ KMUIViewMaker *(UIViewAutoresizing autoresizingMask) {
        [_view setAutoresizingMask:autoresizingMask];
        return self;
    };
}

-(KMUIViewMaker *(^)(UIEdgeInsets))layoutMargins {
    return ^ KMUIViewMaker *(UIEdgeInsets layoutMargins) {
        [_view setLayoutMargins:layoutMargins];
        return self;
    };
}
-(KMUIViewMaker *(^)(BOOL))clipsToBounds {
    return ^ KMUIViewMaker *(BOOL clipsToBounds) {
        [_view setClipsToBounds:clipsToBounds];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIColor *))backgroundColor {
    return ^ KMUIViewMaker *(UIColor * backgroundColor) {
        [_view setBackgroundColor:backgroundColor];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGFloat))alpha {
    return ^ KMUIViewMaker *(CGFloat alpha) {
        [_view setAlpha:alpha];
        return self;
    };
}
-(KMUIViewMaker *(^)(BOOL))hidden {
    return ^ KMUIViewMaker *(BOOL hidden) {
        [_view setHidden:hidden];
        return self;
    };
}

-(KMUIViewMaker *(^)(BOOL))opaque {
    return ^ KMUIViewMaker *(BOOL opaque) {
        [_view setOpaque:opaque];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIViewContentMode))contentMode {
    return ^ KMUIViewMaker *(UIViewContentMode contentMode) {
        [_view setContentMode:contentMode];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIView *))maskView {
    return ^ KMUIViewMaker *(UIView * maskView) {
        [_view setMaskView:maskView];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIColor *))tintColor {
    return ^ KMUIViewMaker *(UIColor * tintColor) {
        [_view setTintColor:tintColor];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGFloat))cornerRadius {
    return ^ KMUIViewMaker *(CGFloat cornerRadius) {
        [_view.layer setCornerRadius:cornerRadius];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIColor *))borderColor {
    return ^ KMUIViewMaker *(UIColor * borderColor) {
        [_view.layer setBorderColor:[borderColor CGColor]];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGFloat))borderWidth {
    return ^ KMUIViewMaker *(CGFloat borderWidth) {
        [_view.layer setBorderWidth:borderWidth];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIColor *))shadowColor {
    return ^ KMUIViewMaker *(UIColor * shadowColor) {
        [_view.layer setShadowColor:shadowColor.CGColor];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGSize))shadowOffset {
    return ^ KMUIViewMaker *(CGSize shadowOffset) {
        [_view.layer setShadowOffset:shadowOffset];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGFloat))shadowOpacity {
    return ^ KMUIViewMaker *(CGFloat shadowOpacity) {
        [_view.layer setShadowOpacity:shadowOpacity];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGFloat))shadowRadius {
    return ^ KMUIViewMaker *(CGFloat shadowRadius) {
        [_view.layer setShadowRadius:shadowRadius];
        return self;
    };
}
-(KMUIViewMaker *(^)(CGPathRef))shadowPath {
    return ^ KMUIViewMaker *(CGPathRef shadowPath) {
        [_view.layer setShadowPath:shadowPath];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIView *))addToSuperView {
    return ^ KMUIViewMaker *(UIView * superView) {
        [superView addSubview:_view];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIView *))addSubview {
    return ^ KMUIViewMaker *(UIView * subview) {
        [_view addSubview:subview];
        return self;
    };
}
-(KMUIViewMaker *(^)(UIGestureRecognizer *))addGestureRecognizer {
    return ^ KMUIViewMaker *(UIGestureRecognizer * gestureRecognizer) {
        [_view addGestureRecognizer:gestureRecognizer];
        return self;
    };
}
@end
