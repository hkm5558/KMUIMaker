//
//  KMTextFieldMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIControlMaker.h"

@interface KMTextFieldMaker : KMUIControlMaker
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithControl:(UIControl *)control NS_UNAVAILABLE;
- (instancetype)initWithTextField:(UITextField *)textField NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UITextField * textField;

@property (nonatomic, copy, readonly) KMTextFieldMaker *(^text)(NSString * text);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^attributedText)(NSAttributedString * attributedText);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^textColor)(UIColor * textColor);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^font)(UIFont * font);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^borderStyle)(UITextBorderStyle borderStyle);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^placeholder)(NSString * placeholder);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^attributedPlaceholder)(NSAttributedString * attributedPlaceholder);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^minimumFontSize)(CGFloat minimumFontSize);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^delegate)(id<UITextFieldDelegate> delegate);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^background)(UIImage * background);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^disabledBackground)(UIImage * disabledBackground);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^allowsEditingTextAttributes)(BOOL  allowsEditingTextAttributes);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^typingAttributes)(NSDictionary<NSString *, id> * typingAttributes);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^clearButtonMode)(UITextFieldViewMode clearButtonMode);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^leftView)(UIView * leftView);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^leftViewMode)(UITextFieldViewMode leftViewMode);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^rightView)(UIView * rightView);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^rightViewMode)(UITextFieldViewMode rightViewMode);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^inputView)(UIView * inputView);
@property (nonatomic, copy, readonly) KMTextFieldMaker *(^inputAccessoryView)(UIView * inputAccessoryView);
@end
