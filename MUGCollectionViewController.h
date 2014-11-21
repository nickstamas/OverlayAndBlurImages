//
//  MUGCollectionViewController.h
//  MUGColorPrototype
//
//  Created by Nick Stamas on 11/20/14.
//  Copyright (c) 2014 Nick Stamas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MUGCollectionViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *mugs;

@end
