//
//  MUGCell.h
//  MUGColorPrototype
//
//  Created by Nick Stamas on 11/20/14.
//  Copyright (c) 2014 Nick Stamas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MUGCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UIView *overlayView;
@property (weak, nonatomic) IBOutlet UILabel *groupNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *groupSubLabel;
@end
