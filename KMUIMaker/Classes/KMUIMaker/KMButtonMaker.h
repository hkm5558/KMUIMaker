//
//  KMButtonMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIControlMaker.h"

@interface KMButtonMaker : KMUIControlMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithControl:(UIControl *)control NS_UNAVAILABLE;
- (instancetype)initWithButton:(UIButton *)button NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UIButton * button;

@property (nonatomic, copy, readonly) KMButtonMaker *(^contentEdgeInsets)(UIEdgeInsets contentEdgeInsets);
@property (nonatomic, copy, readonly) KMButtonMaker *(^titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
@property (nonatomic, copy, readonly) KMButtonMaker *(^imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
@property (nonatomic, copy, readonly) KMButtonMaker *(^tintColor)(UIColor * tintColor);
@property (nonatomic, copy, readonly) KMButtonMaker *(^titleForState)(NSString * title, UIControlState state);
@property (nonatomic, copy, readonly) KMButtonMaker *(^titleColorForState)(UIColor * titleColor, UIControlState state);
@property (nonatomic, copy, readonly) KMButtonMaker *(^titleShadowColorForState)(UIColor * titleShadowColor, UIControlState state);
@property (nonatomic, copy, readonly) KMButtonMaker *(^imageForState)(UIImage * image, UIControlState state);
@property (nonatomic, copy, readonly) KMButtonMaker *(^backgroundImageForState)(UIImage * backgroundImage, UIControlState state);

@property (nonatomic, copy, readonly) KMButtonMaker *(^attributedTitleForState)(NSAttributedString * attributedTitle, UIControlState state);



@end
