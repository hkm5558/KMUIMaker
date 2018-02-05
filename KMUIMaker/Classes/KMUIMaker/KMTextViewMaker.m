//
//  KMTextViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMTextViewMaker.h"

@interface KMTextViewMaker ()

@property (nonatomic, strong, readwrite) UITextView * textView;

@end

@implementation KMTextViewMaker

- (instancetype)initWithTextView:(UITextView *)textView {
    if (self = [super initWithScrollView:textView]) {
        NSAssert(textView, @"textView cannot be nil");
        self.textView = textView;
    }
    return self;
}
-(KMTextViewMaker *(^)(id<UITextViewDelegate>))delegate {
    return ^ KMTextViewMaker *(id<UITextViewDelegate> delegate) {
        [_textView setDelegate:delegate];
        return self;
    };
}
-(KMTextViewMaker *(^)(NSString *))text {
    return ^ KMTextViewMaker *(NSString * text) {
        [_textView setText:text];
        return self;
    };
}
-(KMTextViewMaker *(^)(UIFont *))font {
    return ^ KMTextViewMaker *(UIFont * font) {
        [_textView setFont:font];
        return self;
    };
}
-(KMTextViewMaker *(^)(UIColor *))textColor {
    return ^ KMTextViewMaker *(UIColor * textColor) {
        [_textView setTextColor:textColor];
        return self;
    };
}
-(KMTextViewMaker *(^)(NSTextAlignment))textAlignment {
    return ^ KMTextViewMaker *(NSTextAlignment textAlignment) {
        [_textView setTextAlignment:textAlignment];
        return self;
    };
}
-(KMTextViewMaker *(^)(NSRange))selectedRange {
    return ^ KMTextViewMaker *(NSRange selectedRange) {
        [_textView setSelectedRange:selectedRange];
        return self;
    };
}
-(KMTextViewMaker *(^)(BOOL))editable {
    return ^ KMTextViewMaker *(BOOL editable) {
        [_textView setEditable:editable];
        return self;
    };
}
-(KMTextViewMaker *(^)(BOOL))selectable {
    return ^ KMTextViewMaker *(BOOL selectable) {
        [_textView setSelectable:selectable];
        return self;
    };
}
-(KMTextViewMaker *(^)(UIDataDetectorTypes))dataDetectorTypes {
    return ^ KMTextViewMaker *(UIDataDetectorTypes dataDetectorTypes) {
        [_textView setDataDetectorTypes:dataDetectorTypes];
        return self;
    };
}
-(KMTextViewMaker *(^)(BOOL))allowsEditingTextAttributes {
    return ^ KMTextViewMaker *(BOOL allowsEditingTextAttributes) {
        [_textView setAllowsEditingTextAttributes:allowsEditingTextAttributes];
        return self;
    };
}
-(KMTextViewMaker *(^)(NSAttributedString *))attributedText {
    return ^ KMTextViewMaker *(NSAttributedString * attributedText) {
        [_textView setAttributedText:attributedText];
        return self;
    };
}
-(KMTextViewMaker *(^)(NSDictionary<NSString *,id> *))typingAttributes {
    return ^ KMTextViewMaker *(NSDictionary<NSString *,id> * typingAttributes) {
        [_textView setTypingAttributes:typingAttributes];
        return self;
    };
}
-(KMTextViewMaker *(^)(UIView *))inputView {
    return ^ KMTextViewMaker *(UIView * inputView) {
        [_textView setInputView:inputView];
        return self;
    };
}
-(KMTextViewMaker *(^)(UIView *))inputAccessoryView {
    return ^ KMTextViewMaker *(UIView * inputAccessoryView) {
        [_textView setInputAccessoryView:inputAccessoryView];
        return self;
    };
}
-(KMTextViewMaker *(^)(BOOL))clearsOnInsertion {
    return ^ KMTextViewMaker *(BOOL clearsOnInsertion) {
        [_textView setClearsOnInsertion:clearsOnInsertion];
        return self;
    };
}
-(KMTextViewMaker *(^)(UIEdgeInsets))textContainerInset {
    return ^ KMTextViewMaker *(UIEdgeInsets textContainerInset) {
        [_textView setTextContainerInset:textContainerInset];
        return self;
    };
}
-(KMTextViewMaker *(^)(NSDictionary<NSString *,id> *))linkTextAttributes {
    return ^ KMTextViewMaker *(NSDictionary<NSString *,id> * linkTextAttributes) {
        [_textView setLinkTextAttributes:linkTextAttributes];
        return self;
    };
}
@end
