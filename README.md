# KMUIMaker
使用类似Masonry链式编程的方式初始化UIView、UIButton、UILabel、UIScrollview、UITextView、UITabelView...

![image](https://github.com/hkm5558/KMUIMaker/blob/master/Screenshot/截图1.png)

## Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries. You can install it with the following command:

```bash
$ gem install cocoapods
```
#### Podfile

To integrate KMUIMaker into your Xcode project using CocoaPods, specify it in your `Podfile`:

In your Podfile
>`pod 'KMUIMaker'`

Then, run the following command:

```bash
$ pod install
```

## Requirements

This library requires `iOS 8.0+`

## Architecture

### KMUIMaker

- `KMUIViewMaker`
- `KMLabelMaker`
- `KMImageViewMaker`
- `KMUIControlMaker`
- `KMButtonMaker`
- `KMTextFieldMaker`
- `KMScrollViewMaker`
- `KMTableViewMaker`
- `KMCollectionViewMaker`
- `KMTextViewMaker`


### KMUIMakerCategory

- `UIView+KMUIViewMaker`
- `UILabel+KMLabelMaker`
- `UIImageView+KMImageViewMaker`
- `UIButton+KMButtonMaker`
- `UITextField+KMTextFieldMaker`
- `UIScrollView+KMScrollViewMaker`
- `UITableView+KMTableViewMaker` 
- `UICollectionView+KMCollectionViewMaker`
- `UITextView+KMTextViewMaker`

## Usage


```obj-c
    ///UIView
    [UIView km_makeView:^(KMUIViewMaker *make) {
        make
        .frame(CGRectMake(100, 84, 150, 130))
        .backgroundColor([UIColor lightGrayColor])
        .cornerRadius(5)
        .borderWidth(1)
        .borderColor([UIColor cyanColor])
        .clipsToBounds(YES)
        .addToSuperView(self.view)
        .addSubview([UILabel km_makeLabel:^(KMLabelMaker *make) {
            make
            .font([UIFont systemFontOfSize:11])
            .text(@"我是Label")
            .textColor([UIColor redColor])
            .textAlignment(NSTextAlignmentRight)
            .userInteractionEnabled(YES)
            .addGestureRecognizer([[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapLabel:)])
            .frame(CGRectMake(10, 10, 80, 50))
            .backgroundColor([UIColor colorWithRed:0.1 green:0.1 blue:0.7 alpha:0.7]);
        }]);
    }];

    ///UIButton
    [UIButton km_makeButton:^(KMButtonMaker *make) {
        make
        .titleForState(@"我是Button", UIControlStateNormal)
        .titleColorForState([UIColor whiteColor], UIControlStateNormal)
        .addTargetAndActionForControlEvents(self, @selector(clickButton:), UIControlEventTouchUpInside)
        .frame(CGRectMake(100, 100, 200, 100))
        .center(self.view.center)
        .backgroundColor([UIColor colorWithRed:1 green:0 blue:0 alpha:0.7])
        .cornerRadius(8)
        .shadowRadius(3)
        .shadowOpacity(1)
        .shadowColor([UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.7])
        .shadowOffset(CGSizeMake(3, 3))
        .addToSuperView(self.view);
    }];
    
```
![image](https://github.com/hkm5558/KMUIMaker/blob/master/Screenshot/截图2.png)

## Author

hkm5558, SZHuangKM@163.com

## License

KMUIMaker is available under the MIT license. See the LICENSE file for more info.

