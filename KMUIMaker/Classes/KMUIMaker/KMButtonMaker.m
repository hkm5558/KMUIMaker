//
//  KMButtonMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMButtonMaker.h"

@interface KMButtonMaker ()

@property (nonatomic, strong, readwrite) UIButton * button;

@end

@implementation KMButtonMaker

- (instancetype)initWithButton:(UIButton *)button {
    if (self = [super initWithControl:button]) {
        NSAssert(button, @"Button cannot be nil");
        self.button = button;
    }
    return self;
}

-(KMButtonMaker *(^)(UIEdgeInsets))contentEdgeInsets {
    
    return ^ KMButtonMaker *(UIEdgeInsets contentEdgeInsets) {
        [_button setContentEdgeInsets:contentEdgeInsets];
        return self;
    };
}
-(KMButtonMaker *(^)(UIEdgeInsets))titleEdgeInsets {
    return ^ KMButtonMaker *(UIEdgeInsets titleEdgeInsets) {
        [_button setTitleEdgeInsets:titleEdgeInsets];
        return self;
    };
}
-(KMButtonMaker *(^)(UIEdgeInsets))imageEdgeInsets {
    return ^ KMButtonMaker *(UIEdgeInsets imageEdgeInsets) {
        [_button setImageEdgeInsets:imageEdgeInsets];
        return self;
    };
}
-(KMButtonMaker *(^)(UIColor *))tintColor {
    return ^ KMButtonMaker *(UIColor * tintColor) {
        [_button setTintColor:tintColor];
        return self;
    };
}
-(KMButtonMaker *(^)(NSString *, UIControlState))titleForState {
    return ^ KMButtonMaker *(NSString * title, UIControlState state) {
        [_button setTitle:title forState:state];
        return self;
    };
}
-(KMButtonMaker *(^)(UIColor *, UIControlState))titleColorForState {
    return ^ KMButtonMaker *(UIColor * titleColor, UIControlState state) {
        [_button setTitleColor:titleColor forState:state];
        return self;
    };
}
-(KMButtonMaker *(^)(UIColor *, UIControlState))titleShadowColorForState {
    return ^ KMButtonMaker *(UIColor * titleShadowColor, UIControlState state) {
        [_button setTitleShadowColor:titleShadowColor forState:state];
        return self;
    };
}
-(KMButtonMaker *(^)(UIImage *, UIControlState))imageForState {
    return ^ KMButtonMaker *(UIImage * image, UIControlState state) {
        [_button setImage:image forState:state];
        return self;
    };
}
-(KMButtonMaker *(^)(UIImage *, UIControlState))backgroundImageForState {
    return ^ KMButtonMaker *(UIImage * backgroundImage, UIControlState state) {
        [_button setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}
-(KMButtonMaker *(^)(NSAttributedString *, UIControlState))attributedTitleForState {
    return ^ KMButtonMaker *(NSAttributedString * attributedTitle, UIControlState state) {
        [_button setAttributedTitle:attributedTitle forState:state];
        return self;
    };
}


@end
