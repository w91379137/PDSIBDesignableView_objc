//
//  ViewController.h
//  PDSIBDesignableView_objcDemo
//
//  Created by w91379137 on 2016/3/27.
//  Copyright © 2016年 w91379137. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDataSource, UITableViewDelegate,
UICollectionViewDataSource, UICollectionViewDelegate
>

@property(nonatomic, strong) IBOutlet UITableView *mainTableView;
@property(nonatomic, strong) IBOutlet UICollectionView *mainCollectionView;

@end
