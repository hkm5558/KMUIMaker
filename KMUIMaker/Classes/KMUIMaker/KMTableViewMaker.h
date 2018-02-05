//
//  KMTableViewMaker.h
//  KMUIMakerDemo
//
//  Created by KM on 2018/2/2.
//  Copyright © 2018年 KM. All rights reserved.
//

#import "KMScrollViewMaker.h"

@interface KMTableViewMaker : KMScrollViewMaker
- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_UNAVAILABLE;

- (instancetype)initWithTableView:(UITableView *)tableView NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UITableView * tableView;

@property (nonatomic, copy, readonly) KMTableViewMaker *(^dataSource)(id <UITableViewDataSource> dataSource);

@property (nonatomic, copy, readonly) KMTableViewMaker *(^delegate)(id <UITableViewDelegate> delegate);

@property (nonatomic, copy, readonly) KMTableViewMaker *(^prefetchDataSource)(id <UITableViewDataSourcePrefetching> prefetchDataSource) NS_AVAILABLE_IOS(10_0);

@property (nonatomic, copy, readonly) KMTableViewMaker *(^dragDelegate)(id <UITableViewDragDelegate> dragDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) KMTableViewMaker *(^dropDelegate)(id <UITableViewDropDelegate> dropDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);


@property (nonatomic, copy, readonly) KMTableViewMaker *(^rowHeight)(CGFloat rowHeight);

@property (nonatomic, copy, readonly) KMTableViewMaker *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^sectionFooterHeight)(CGFloat sectionFooterHeight);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^estimatedRowHeight)(CGFloat estimatedRowHeight);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^separatorInset)(UIEdgeInsets separatorInset);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^backgroundView)(UIView * backgroundView);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^editing)(BOOL editing);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^allowsSelection)(BOOL allowsSelection);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^allowsSelectionDuringEditing)(BOOL allowsSelectionDuringEditing);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^allowsMultipleSelection)(BOOL allowsMultipleSelection);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^allowsMultipleSelectionDuringEditing)(BOOL allowsMultipleSelectionDuringEditing);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^sectionIndexMinimumDisplayRowCount)(NSInteger sectionIndexMinimumDisplayRowCount);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^sectionIndexColor)(UIColor * sectionIndexColor);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^sectionIndexBackgroundColor)(UIColor * sectionIndexBackgroundColor);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^sectionIndexTrackingBackgroundColor)(UIColor * sectionIndexTrackingBackgroundColor);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^separatorStyle)(UITableViewCellSeparatorStyle  separatorStyle);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^separatorColor)(UIColor * separatorColor);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^separatorEffect)(UIVisualEffect * separatorEffect);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^tableHeaderView)(UIView * tableHeaderView);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^tableFooterView)(UIView * tableFooterView);

@property (nonatomic, copy, readonly) KMTableViewMaker *(^registerNibForCellReuseIdentifier)(UINib * nib, NSString *identifier);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^registerClassForCellReuseIdentifier)(Class cellClass, NSString *identifier);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^registerNibForHeaderFooterViewReuseIdentifier)(UINib * nib, NSString *identifier);
@property (nonatomic, copy, readonly) KMTableViewMaker *(^registerClassForHeaderFooterViewReuseIdentifier)(Class aClass, NSString *identifier);

@end
