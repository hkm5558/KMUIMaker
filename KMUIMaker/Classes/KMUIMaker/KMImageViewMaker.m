//
//  KMImageViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMImageViewMaker.h"

@interface KMImageViewMaker ()

@property (nonatomic, strong, readwrite) UIImageView * imageView;

@end

@implementation KMImageViewMaker

- (instancetype)initWithImageView:(UIImageView *)imageView {
    if (self = [super initWithView:imageView]) {
        NSAssert(imageView, @"imageView cannot be nil");
        self.imageView = imageView;
    }
    return self;
}
-(KMImageViewMaker *(^)(UIImage *))image {
    return ^ KMImageViewMaker *(UIImage * image) {
        [_imageView setImage:image];
        return self;
    };
}
-(KMImageViewMaker *(^)(UIImage *))highlightedImage {
    return ^ KMImageViewMaker *(UIImage * highlightedImage) {
        [_imageView setHighlightedImage:highlightedImage];
        return self;
    };
}
-(KMImageViewMaker *(^)(BOOL))userInteractionEnabled {
    return ^ KMImageViewMaker *(BOOL userInteractionEnabled) {
        [_imageView setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}
-(KMImageViewMaker *(^)(BOOL))highlighted {
    return ^ KMImageViewMaker *(BOOL highlighted) {
        [_imageView setHighlighted:highlighted];
        return self;
    };
}
-(KMImageViewMaker *(^)(NSArray<UIImage *> *))animationImages {
    return ^ KMImageViewMaker *(NSArray<UIImage *> * animationImages) {
        [_imageView setAnimationImages:animationImages];
        return self;
    };
}
-(KMImageViewMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages {
    return ^ KMImageViewMaker *(NSArray<UIImage *> * highlightedAnimationImages) {
        [_imageView setHighlightedAnimationImages:highlightedAnimationImages];
        return self;
    };
}
-(KMImageViewMaker *(^)(NSTimeInterval))animationDuration {
    return ^ KMImageViewMaker *(NSTimeInterval animationDuration) {
        [_imageView setAnimationDuration:animationDuration];
        return self;
    };
}
-(KMImageViewMaker *(^)(NSInteger))animationRepeatCount {
    return ^ KMImageViewMaker *(NSInteger animationRepeatCount) {
        [_imageView setAnimationRepeatCount:animationRepeatCount];
        return self;
    };
}
-(KMImageViewMaker *(^)(UIColor *))tintColor {
    return ^ KMImageViewMaker *(UIColor * tintColor) {
        [_imageView setTintColor:tintColor];
        return self;
    };
}
@end
