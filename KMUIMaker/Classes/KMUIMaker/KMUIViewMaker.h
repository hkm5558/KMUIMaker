//
//  KMUIViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface KMUIViewMaker : NSObject

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithView:(UIView *)view NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UIView * view;

@property (nonatomic, copy, readonly) KMUIViewMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^tag)(NSInteger tag);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^frame)(CGRect frame);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^center)(CGPoint center);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^transform)(CGAffineTransform transform);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^multipleTouchEnabled)(BOOL multipleTouchEnabled);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^exclusiveTouch)(BOOL exclusiveTouch);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^autoresizesSubviews)(BOOL autoresizesSubviews);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^autoresizingMask)(UIViewAutoresizing autoresizingMask);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^layoutMargins)(UIEdgeInsets layoutMargins);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^clipsToBounds)(BOOL clipsToBounds);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^backgroundColor)(UIColor * backgroundColor);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^alpha)(CGFloat alpha);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^hidden)(BOOL hidden);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^opaque)(BOOL opaque);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^contentMode)(UIViewContentMode contentMode);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^maskView)(UIView * maskView);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^tintColor)(UIColor * tintColor);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^borderColor)(UIColor * borderColor);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^borderWidth)(CGFloat borderWidth);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^shadowColor)(UIColor * shadowColor);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^shadowOffset)(CGSize shadowOffset);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^shadowOpacity)(CGFloat shadowOpacity);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^shadowRadius)(CGFloat shadowRadius);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^shadowPath)(CGPathRef shadowPath);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^addToSuperView)(UIView * superView);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^addSubview)(UIView * subview);

@property (nonatomic, copy, readonly) KMUIViewMaker *(^addGestureRecognizer)(UIGestureRecognizer * gestureRecognizer);

@end
