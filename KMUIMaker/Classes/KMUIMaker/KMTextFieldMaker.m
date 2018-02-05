//
//  KMTextFieldMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMTextFieldMaker.h"

@interface KMTextFieldMaker ()

@property (nonatomic, strong, readwrite) UITextField * textField;

@end

@implementation KMTextFieldMaker

- (instancetype)initWithTextField:(UITextField *)textField {
    if (self = [super initWithControl:textField]) {
        NSAssert(textField, @"textField cannot be nil");
        self.textField = textField;
    }
    return self;
}
-(KMTextFieldMaker *(^)(NSString *))text {
    return ^ KMTextFieldMaker *(NSString * text) {
        [_textField setText:text];
        return self;
    };
}
-(KMTextFieldMaker *(^)(NSAttributedString *))attributedText {
    return ^ KMTextFieldMaker *(NSAttributedString * attributedText) {
        [_textField setAttributedText:attributedText];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIColor *))textColor {
    return ^ KMTextFieldMaker *(UIColor * textColor) {
        [_textField setTextColor:textColor];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIFont *))font {
    return ^ KMTextFieldMaker *(UIFont * font) {
        [_textField setFont:font];
        return self;
    };
}
-(KMTextFieldMaker *(^)(NSTextAlignment))textAlignment {
    return ^ KMTextFieldMaker *(NSTextAlignment textAlignment) {
        [_textField setTextAlignment:textAlignment];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UITextBorderStyle))borderStyle {
    return ^ KMTextFieldMaker *(UITextBorderStyle borderStyle) {
        [_textField setBorderStyle:borderStyle];
        return self;
    };
}
-(KMTextFieldMaker *(^)(NSString *))placeholder {
    return ^ KMTextFieldMaker *(NSString * placeholder) {
        [_textField setPlaceholder:placeholder];
        return self;
    };
}
-(KMTextFieldMaker *(^)(NSAttributedString *))attributedPlaceholder {
    return ^ KMTextFieldMaker *(NSAttributedString * attributedPlaceholder) {
        [_textField setAttributedText:attributedPlaceholder];
        return self;
    };
}
-(KMTextFieldMaker *(^)(BOOL))clearsOnBeginEditing {
    return ^ KMTextFieldMaker *(BOOL clearsOnBeginEditing) {
        [_textField setClearsOnBeginEditing:clearsOnBeginEditing];
        return self;
    };
}
-(KMTextFieldMaker *(^)(BOOL))adjustsFontSizeToFitWidth {
    return ^ KMTextFieldMaker *(BOOL adjustsFontSizeToFitWidth) {
        [_textField setAdjustsFontSizeToFitWidth:adjustsFontSizeToFitWidth];
        return self;
    };
}
-(KMTextFieldMaker *(^)(CGFloat))minimumFontSize {
    return ^ KMTextFieldMaker *(CGFloat minimumFontSize) {
        [_textField setMinimumFontSize:minimumFontSize];
        return self;
    };
}
-(KMTextFieldMaker *(^)(id<UITextFieldDelegate>))delegate {
    return ^ KMTextFieldMaker *(id<UITextFieldDelegate> delegate) {
        [_textField setDelegate:delegate];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIImage *))background {
    return ^ KMTextFieldMaker *(UIImage * background) {
        [_textField setBackground:background];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIImage *))disabledBackground {
    return ^ KMTextFieldMaker *(UIImage * disabledBackground) {
        [_textField setDisabledBackground:disabledBackground];
        return self;
    };
}
-(KMTextFieldMaker *(^)(BOOL))allowsEditingTextAttributes {
    return ^ KMTextFieldMaker *(BOOL allowsEditingTextAttributes) {
        [_textField setAllowsEditingTextAttributes:allowsEditingTextAttributes];
        return self;
    };
}
-(KMTextFieldMaker *(^)(NSDictionary<NSString *,id> *))typingAttributes {
    return ^ KMTextFieldMaker *(NSDictionary<NSString *,id> * typingAttributes) {
        [_textField setTypingAttributes:typingAttributes];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UITextFieldViewMode))clearButtonMode {
    return ^ KMTextFieldMaker *(UITextFieldViewMode clearButtonMode) {
        [_textField setClearButtonMode:clearButtonMode];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIView *))leftView {
    return ^ KMTextFieldMaker *(UIView * leftView) {
        [_textField setLeftView:leftView];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UITextFieldViewMode))leftViewMode {
    return ^ KMTextFieldMaker *(UITextFieldViewMode leftViewMode) {
        [_textField setLeftViewMode:leftViewMode];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIView *))rightView {
    return ^ KMTextFieldMaker *(UIView * rightView) {
        [_textField setRightView:rightView];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UITextFieldViewMode))rightViewMode {
    return ^ KMTextFieldMaker *(UITextFieldViewMode rightViewMode) {
        [_textField setRightViewMode:rightViewMode];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIView *))inputView {
    return ^ KMTextFieldMaker *(UIView * inputView) {
        [_textField setInputView:inputView];
        return self;
    };
}
-(KMTextFieldMaker *(^)(UIView *))inputAccessoryView {
    return ^ KMTextFieldMaker *(UIView * inputAccessoryView) {
        [_textField setInputAccessoryView:inputAccessoryView];
        return self;
    };
}
@end
