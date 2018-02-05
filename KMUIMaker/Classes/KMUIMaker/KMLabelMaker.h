//
//  KMLabelMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIViewMaker.h"
@interface KMLabelMaker : KMUIViewMaker

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;

- (instancetype)initWithLabel:(UILabel *)label NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UILabel * label;

@property (nonatomic, copy, readonly) KMLabelMaker *(^font)(UIFont *font);
@property (nonatomic, copy, readonly) KMLabelMaker *(^text)(NSString *text);
@property (nonatomic, copy, readonly) KMLabelMaker *(^textColor)(UIColor *textColor);
@property (nonatomic, copy, readonly) KMLabelMaker *(^shadowColor)(UIColor *shadowColor);
@property (nonatomic, copy, readonly) KMLabelMaker *(^shadowOffset)(CGSize shadowOffset);
@property (nonatomic, copy, readonly) KMLabelMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) KMLabelMaker *(^lineBreakMode)(NSLineBreakMode lineBreakMode);
@property (nonatomic, copy, readonly) KMLabelMaker *(^attributedText)(NSAttributedString * attributedText);
@property (nonatomic, copy, readonly) KMLabelMaker *(^highlightedTextColor)(UIColor * highlightedTextColor);
@property (nonatomic, copy, readonly) KMLabelMaker *(^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) KMLabelMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) KMLabelMaker *(^enabled)(BOOL enabled);
@property (nonatomic, copy, readonly) KMLabelMaker *(^numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) KMLabelMaker *(^adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) KMLabelMaker *(^baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);
@property (nonatomic, copy, readonly) KMLabelMaker *(^minimumScaleFactor)(CGFloat minimumScaleFactor);
@property (nonatomic, copy, readonly) KMLabelMaker *(^preferredMaxLayoutWidth)(CGFloat preferredMaxLayoutWidth);


@end
