//
//  KMTableViewMaker.m
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMTableViewMaker.h"
@interface KMTableViewMaker ()

@property (nonatomic, strong, readwrite) UITableView * tableView;

@end


@implementation KMTableViewMaker
- (instancetype)initWithTableView:(UITableView *)tableView {
    if (self = [super initWithScrollView:tableView]) {
        NSAssert(tableView, @"tableView cannot be nil");
        self.tableView = tableView;
    }
    return self;
}
-(KMTableViewMaker *(^)(id<UITableViewDataSource>))dataSource {
    return ^ KMTableViewMaker *(id<UITableViewDataSource> dataSource) {
        [_tableView setDataSource:dataSource];
        return self;
    };
}
-(KMTableViewMaker *(^)(id<UITableViewDelegate>))delegate {
    return ^ KMTableViewMaker *(id<UITableViewDelegate> delegate) {
        [_tableView setDelegate:delegate];
        return self;
    };
}
-(KMTableViewMaker *(^)(id<UITableViewDataSourcePrefetching>))prefetchDataSource {
    return ^ KMTableViewMaker *(id<UITableViewDataSourcePrefetching> prefetchDataSource) {
        [_tableView setPrefetchDataSource:prefetchDataSource];
        return self;
    };
}
-(KMTableViewMaker *(^)(id<UITableViewDragDelegate>))dragDelegate {
    return ^ KMTableViewMaker *(id<UITableViewDragDelegate> dragDelegate) {
        [_tableView setDragDelegate:dragDelegate];
        return self;
    };
}
-(KMTableViewMaker *(^)(id<UITableViewDropDelegate>))dropDelegate {
    return ^ KMTableViewMaker *(id<UITableViewDropDelegate> dropDelegate) {
        [_tableView setDropDelegate:dropDelegate];
        return self;
    };
}
-(KMTableViewMaker *(^)(CGFloat))rowHeight {
    return ^ KMTableViewMaker *(CGFloat rowHeight) {
        [_tableView setRowHeight:rowHeight];
        return self;
    };
}
-(KMTableViewMaker *(^)(CGFloat))sectionHeaderHeight {
    return ^ KMTableViewMaker *(CGFloat sectionHeaderHeight) {
        [_tableView setSectionHeaderHeight:sectionHeaderHeight];
        return self;
    };
}
-(KMTableViewMaker *(^)(CGFloat))sectionFooterHeight {
    return ^ KMTableViewMaker *(CGFloat sectionFooterHeight) {
        [_tableView setSectionFooterHeight:sectionFooterHeight];
        return self;
    };
}
-(KMTableViewMaker *(^)(CGFloat))estimatedRowHeight {
    return ^ KMTableViewMaker *(CGFloat estimatedRowHeight) {
        [_tableView setEstimatedRowHeight:estimatedRowHeight];
        return self;
    };
}
-(KMTableViewMaker *(^)(CGFloat))estimatedSectionHeaderHeight {
    return ^ KMTableViewMaker *(CGFloat estimatedSectionHeaderHeight) {
        [_tableView setEstimatedSectionHeaderHeight:estimatedSectionHeaderHeight];
        return self;
    };
}
-(KMTableViewMaker *(^)(CGFloat))estimatedSectionFooterHeight {
    return ^ KMTableViewMaker *(CGFloat estimatedSectionFooterHeight) {
        [_tableView setEstimatedSectionFooterHeight:estimatedSectionFooterHeight];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIEdgeInsets))separatorInset {
    return ^ KMTableViewMaker *(UIEdgeInsets separatorInset) {
        [_tableView setSeparatorInset:separatorInset];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIView *))backgroundView {
    return ^ KMTableViewMaker *(UIView * backgroundView) {
        [_tableView setBackgroundView:backgroundView];
        return self;
    };
}
-(KMTableViewMaker *(^)(BOOL))editing {
    return ^ KMTableViewMaker *(BOOL editing) {
        [_tableView setEditing:editing];
        return self;
    };
}
-(KMTableViewMaker *(^)(BOOL))allowsSelection {
    return ^ KMTableViewMaker *(BOOL allowsSelection) {
        [_tableView setAllowsSelection:allowsSelection];
        return self;
    };
}
-(KMTableViewMaker *(^)(BOOL))allowsSelectionDuringEditing {
    return ^ KMTableViewMaker *(BOOL allowsSelectionDuringEditing) {
        [_tableView setAllowsSelectionDuringEditing:allowsSelectionDuringEditing];
        return self;
    };
}
-(KMTableViewMaker *(^)(BOOL))allowsMultipleSelection {
    return ^ KMTableViewMaker *(BOOL allowsMultipleSelection) {
        [_tableView setAllowsMultipleSelection:allowsMultipleSelection];
        return self;
    };
}
-(KMTableViewMaker *(^)(BOOL))allowsMultipleSelectionDuringEditing {
    return ^ KMTableViewMaker *(BOOL allowsMultipleSelectionDuringEditing) {
        [_tableView setAllowsMultipleSelectionDuringEditing:allowsMultipleSelectionDuringEditing];
        return self;
    };
}
-(KMTableViewMaker *(^)(NSInteger))sectionIndexMinimumDisplayRowCount {
    return ^ KMTableViewMaker *(NSInteger sectionIndexMinimumDisplayRowCount) {
        [_tableView setSectionIndexMinimumDisplayRowCount:sectionIndexMinimumDisplayRowCount];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIColor *))sectionIndexColor {
    return ^ KMTableViewMaker *(UIColor * sectionIndexColor) {
        [_tableView setSectionIndexColor:sectionIndexColor];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIColor *))sectionIndexBackgroundColor {
    return ^ KMTableViewMaker *(UIColor * sectionIndexBackgroundColor) {
        [_tableView setSectionIndexBackgroundColor:sectionIndexBackgroundColor];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIColor *))sectionIndexTrackingBackgroundColor {
    return ^ KMTableViewMaker *(UIColor * sectionIndexTrackingBackgroundColor) {
        [_tableView setSectionIndexTrackingBackgroundColor:sectionIndexTrackingBackgroundColor];
        return self;
    };
}
-(KMTableViewMaker *(^)(UITableViewCellSeparatorStyle))separatorStyle {
    return ^ KMTableViewMaker *(UITableViewCellSeparatorStyle separatorStyle) {
        [_tableView setSeparatorStyle:separatorStyle];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIColor *))separatorColor {
    return ^ KMTableViewMaker *(UIColor * separatorColor) {
        [_tableView setSeparatorColor:separatorColor];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIVisualEffect *))separatorEffect {
    return ^ KMTableViewMaker *(UIVisualEffect * separatorEffect) {
        [_tableView setSeparatorEffect:separatorEffect];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIView *))tableHeaderView {
    return ^ KMTableViewMaker *(UIView * tableHeaderView) {
        [_tableView setTableHeaderView:tableHeaderView];
        return self;
    };
}
-(KMTableViewMaker *(^)(UIView *))tableFooterView {
    return ^ KMTableViewMaker *(UIView * tableFooterView) {
        [_tableView setTableFooterView:tableFooterView];
        return self;
    };
}
-(KMTableViewMaker *(^)(UINib *, NSString *))registerNibForCellReuseIdentifier {
    return ^ KMTableViewMaker *(UINib * nib, NSString *identifier) {
        [_tableView registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}
-(KMTableViewMaker *(^)(Class, NSString *))registerClassForCellReuseIdentifier {
    return ^ KMTableViewMaker *(Class cellClass, NSString *identifier) {
        [_tableView registerClass:cellClass forCellReuseIdentifier:identifier];
        return self;
    };
}
-(KMTableViewMaker *(^)(UINib *, NSString *))registerNibForHeaderFooterViewReuseIdentifier {
    return ^ KMTableViewMaker *(UINib * nib, NSString *identifier) {
        [_tableView registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}
-(KMTableViewMaker *(^)(Class, NSString *))registerClassForHeaderFooterViewReuseIdentifier {
    return ^ KMTableViewMaker *(Class aClass, NSString *identifier) {
        [_tableView registerClass:aClass forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}
@end
