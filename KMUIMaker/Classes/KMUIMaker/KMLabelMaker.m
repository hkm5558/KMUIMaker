//
//  KMLabelMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/1/31.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMLabelMaker.h"

@interface KMLabelMaker ()

@property (nonatomic, strong, readwrite) UILabel * label;

@end

@implementation KMLabelMaker

-(instancetype)initWithLabel:(UILabel *)label {
    if (self = [super initWithView:label]) {
        NSAssert(label, @"Label cannot be nil");
        self.label = label;
    }
    return self;
}

-(KMLabelMaker *(^)(UIFont *))font {
    return ^ KMLabelMaker *(UIFont * font) {
        [_label setFont:font];
        return self;
    };
}

-(KMLabelMaker *(^)(NSString *))text {
    return ^ KMLabelMaker *(NSString * text) {
        [_label setText:text];
        return self;
    };
}

-(KMLabelMaker *(^)(UIColor *))textColor {
    return ^ KMLabelMaker *(UIColor * textColor) {
        [_label setTextColor:textColor];
        return self;
    };
}
-(KMLabelMaker *(^)(UIColor *))shadowColor {
    return ^ KMLabelMaker *(UIColor * shadowColor) {
        [_label setShadowColor:shadowColor];
        return self;
    };
}

-(KMLabelMaker *(^)(CGSize))shadowOffset {
    return ^ KMLabelMaker *(CGSize shadowOffset) {
        [_label setShadowOffset:shadowOffset];
        return self;
    };
}
-(KMLabelMaker *(^)(NSTextAlignment))textAlignment {
    return ^ KMLabelMaker *(NSTextAlignment textAlignment) {
        [_label setTextAlignment:textAlignment];
        return self;
    };
}
-(KMLabelMaker *(^)(NSLineBreakMode))lineBreakMode {
    return ^ KMLabelMaker *(NSLineBreakMode lineBreakMode) {
        [_label setLineBreakMode:lineBreakMode];
        return self;
    };
}
-(KMLabelMaker *(^)(NSAttributedString *))attributedText {
    return ^ KMLabelMaker *(NSAttributedString * attributedText) {
        [_label setAttributedText:attributedText];
        return self;
    };
}
-(KMLabelMaker *(^)(UIColor *))highlightedTextColor {
    return ^ KMLabelMaker *(UIColor * highlightedTextColor) {
        [_label setHighlightedTextColor:highlightedTextColor];
        return self;
    };
}
-(KMLabelMaker *(^)(BOOL))highlighted {
    return ^ KMLabelMaker *(BOOL highlighted) {
        [_label setHighlighted:highlighted];
        return self;
    };
}
-(KMLabelMaker *(^)(BOOL))userInteractionEnabled {
    return ^ KMLabelMaker *(BOOL userInteractionEnabled) {
        [_label setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}
-(KMLabelMaker *(^)(BOOL))enabled {
    return ^ KMLabelMaker *(BOOL enabled) {
        [_label setEnabled:enabled];
        return self;
    };
}
-(KMLabelMaker *(^)(NSInteger))numberOfLines {
    return ^ KMLabelMaker *(NSInteger numberOfLines) {
        [_label setNumberOfLines:numberOfLines];
        return self;
    };
}
-(KMLabelMaker *(^)(BOOL))adjustsFontSizeToFitWidth {
    return ^ KMLabelMaker *(BOOL adjustsFontSizeToFitWidth) {
        [_label setAdjustsFontSizeToFitWidth:adjustsFontSizeToFitWidth];
        return self;
    };
}
-(KMLabelMaker *(^)(UIBaselineAdjustment))baselineAdjustment {
    return ^ KMLabelMaker *(UIBaselineAdjustment baselineAdjustment) {
        [_label setBaselineAdjustment:baselineAdjustment];
        return self;
    };
}
-(KMLabelMaker *(^)(CGFloat))minimumScaleFactor {
    return ^ KMLabelMaker *(CGFloat minimumScaleFactor) {
        [_label setMinimumScaleFactor:minimumScaleFactor];
        return self;
    };
}
-(KMLabelMaker *(^)(CGFloat))preferredMaxLayoutWidth {
    return ^ KMLabelMaker *(CGFloat preferredMaxLayoutWidth) {
        [_label setPreferredMaxLayoutWidth:preferredMaxLayoutWidth];
        return self;
    };
}

@end
