//
//  KMUIControlMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIViewMaker.h"

@interface KMUIControlMaker : KMUIViewMaker
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithControl:(UIControl *)control NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UIControl * control;

@property (nonatomic, copy, readonly) KMUIControlMaker *(^enabled)(BOOL enabled);
@property (nonatomic, copy, readonly) KMUIControlMaker *(^selected)(BOOL selected);
@property (nonatomic, copy, readonly) KMUIControlMaker *(^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) KMUIControlMaker *(^addTargetAndActionForControlEvents)(id target, SEL action, UIControlEvents sontrolEvents);
@property (nonatomic, copy, readonly) KMUIControlMaker *(^removeTargetAndActionForControlEvents)(id target, SEL action, UIControlEvents sontrolEvents);
@property (nonatomic, copy, readonly) KMUIControlMaker *(^contentVerticalAlignment)(UIControlContentVerticalAlignment contentVerticalAlignment);
@property (nonatomic, copy, readonly) KMUIControlMaker *(^contentHorizontalAlignment)(UIControlContentHorizontalAlignment contentHorizontalAlignment);

@end
