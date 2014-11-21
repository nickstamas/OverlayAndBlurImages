//
//  MUGCell.m
//  MUGColorPrototype
//
//  Created by Nick Stamas on 11/20/14.
//  Copyright (c) 2014 Nick Stamas. All rights reserved.
//

#import "MUGCell.h"

@implementation MUGCell

@synthesize backgroundImage;
@synthesize overlayView;
@synthesize groupNameLabel;
@synthesize groupSubLabel;

- (void)setBounds:(CGRect)bounds {
    [super setBounds:bounds];
    self.contentView.frame = bounds;
}

@end
