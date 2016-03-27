//
//  DemoCollectionViewCell.m
//  PDSIBDesignableView_objcDemo
//
//  Created by w91379137 on 2016/3/27.
//  Copyright © 2016年 w91379137. All rights reserved.
//

#import "DemoCollectionViewCell.h"

@implementation DemoCollectionViewCell

#pragma mark - overwrite
+ (NSString *)defaultXibName
{
    return @"DemoXib";
}

- (void)dealloc
{
    NSLog(@"%s",__func__);
}

@end
