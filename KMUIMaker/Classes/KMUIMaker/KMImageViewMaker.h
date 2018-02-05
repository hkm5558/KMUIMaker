//
//  KMImageViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIViewMaker.h"

@interface KMImageViewMaker : KMUIViewMaker
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithImageView:(UIImageView *)imageView NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UIImageView * imageView;

@property (nonatomic, copy, readonly) KMImageViewMaker *(^image)(UIImage * image);

@property (nonatomic, copy, readonly) KMImageViewMaker *(^highlightedImage)(UIImage * highlightedImage);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^animationImages)(NSArray<UIImage *> * animationImages);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^highlightedAnimationImages)(NSArray<UIImage *> * highlightedAnimationImages);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^animationDuration)(NSTimeInterval animationDuration);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^animationRepeatCount)(NSInteger animationRepeatCount);
@property (nonatomic, copy, readonly) KMImageViewMaker *(^tintColor)(UIColor * tintColor);
@end
