//
//  KMTextViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMScrollViewMaker.h"

@interface KMTextViewMaker : KMScrollViewMaker

- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_UNAVAILABLE;

- (instancetype)initWithTextView:(UITextView *)textView NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UITextView * textView;

@property (nonatomic, copy, readonly) KMTextViewMaker *(^delegate)(id<UITextViewDelegate> delegate);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^text)(NSString * text);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^font)(UIFont * font);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^textColor)(UIColor * textColor);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^textAlignment)(NSTextAlignment textAlignment);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^selectedRange)(NSRange selectedRange);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^editable)(BOOL editable);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^selectable)(BOOL selectable);

@property (nonatomic, copy, readonly) KMTextViewMaker *(^dataDetectorTypes)(UIDataDetectorTypes dataDetectorTypes);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^attributedText)(NSAttributedString * attributedText);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^typingAttributes)(NSDictionary<NSString *, id> * typingAttributes);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^inputView)(UIView * inputView);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^inputAccessoryView)(UIView * inputAccessoryView);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^clearsOnInsertion)(BOOL clearsOnInsertion);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^textContainerInset)(UIEdgeInsets textContainerInset);
@property (nonatomic, copy, readonly) KMTextViewMaker *(^linkTextAttributes)(NSDictionary<NSString *, id> * linkTextAttributes);
@end
