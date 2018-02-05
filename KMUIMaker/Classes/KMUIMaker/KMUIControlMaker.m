//
//  KMUIControlMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/1.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMUIControlMaker.h"

@interface KMUIControlMaker ()

@property (nonatomic, strong, readwrite) UIControl * control;

@end

@implementation KMUIControlMaker

- (instancetype)initWithControl:(UIControl *)control {
    if (self = [super initWithView:control]) {
        NSAssert(control, @"control cannot be nil");
        self.control = control;
    }
    return self;
}
-(KMUIControlMaker *(^)(BOOL))enabled {
    return ^ KMUIControlMaker *(BOOL enabled) {
        [_control setEnabled:enabled];
        return self;
    };
}
-(KMUIControlMaker *(^)(BOOL))selected {
    return ^ KMUIControlMaker *(BOOL selected) {
        [_control setSelected:selected];
        return self;
    };
}
-(KMUIControlMaker *(^)(BOOL))highlighted {
    return ^ KMUIControlMaker *(BOOL highlighted) {
        [_control setHighlighted:highlighted];
        return self;
    };
}
-(KMUIControlMaker *(^)(id, SEL, UIControlEvents))addTargetAndActionForControlEvents {
    return ^ KMUIControlMaker *(id target, SEL action, UIControlEvents controlEvents) {
        [_control addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}
-(KMUIControlMaker *(^)(id, SEL, UIControlEvents))removeTargetAndActionForControlEvents {
    return ^ KMUIControlMaker *(id target, SEL action, UIControlEvents controlEvents) {
        [_control removeTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}
-(KMUIControlMaker *(^)(UIControlContentVerticalAlignment))contentVerticalAlignment {
    return ^ KMUIControlMaker *(UIControlContentVerticalAlignment contentVerticalAlignment) {
        [_control setContentVerticalAlignment:contentVerticalAlignment];
        return self;
    };
}
-(KMUIControlMaker *(^)(UIControlContentHorizontalAlignment))contentHorizontalAlignment {
    return ^ KMUIControlMaker *(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        [_control setContentHorizontalAlignment:contentHorizontalAlignment];
        return self;
    };
}
@end
