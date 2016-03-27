//
//  ViewController.m
//  PDSIBDesignableView_objcDemo
//
//  Created by w91379137 on 2016/3/27.
//  Copyright © 2016年 w91379137. All rights reserved.
//

#import "ViewController.h"

#import "DemoTableViewCell.h"
#import "DemoCollectionViewCell.h"

static NSString *cellReuseIdentifier = @"CellReuseIdentifier";

@interface ViewController ()
{
    DemoTableViewCell *measureTableViewCell;
}

@end

@implementation ViewController

#pragma mark - Init
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    {
        [self.mainTableView registerClass:[DemoTableViewCell class]
                   forCellReuseIdentifier:cellReuseIdentifier];
    }
    {
        [self.mainCollectionView registerClass:[DemoCollectionViewCell class]
                    forCellWithReuseIdentifier:cellReuseIdentifier];
        
        UICollectionViewFlowLayout *flowLayout =
        maybe(self.mainCollectionView.collectionViewLayout, UICollectionViewFlowLayout);
        
        DemoCollectionViewCell *measureCollectionViewCell =
        [[DemoCollectionViewCell alloc] initWithFrame:CGRectZero];
        
        float height =
        self.mainCollectionView.frame.size.height;
        
        [measureCollectionViewCell.mainContainerView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(height));
        }];
        [measureCollectionViewCell layoutIfNeeded];
        
        float width =
        measureCollectionViewCell.mainContainerView.frame.size.width;
        
        flowLayout.itemSize = CGSizeMake(width, height);
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DemoTableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)    tableView:(UITableView *)tableView
 heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!measureTableViewCell) {
        measureTableViewCell =
        [[DemoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                 reuseIdentifier:@""];
        measureTableViewCell.frame =
        CGRectMake(0, 0, tableView.contentSize.width, measureTableViewCell.frame.size.height);
        [measureTableViewCell layoutIfNeeded];
    }
    return measureTableViewCell.mainContainerView.frame.size.height;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCollectionViewCell *cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier
                                              forIndexPath:indexPath];
    
    [cell.mainContainerView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(cell.contentView.mas_bottom);
    }];
    return cell;
}

#pragma mark - UICollectionViewDelegate

@end
