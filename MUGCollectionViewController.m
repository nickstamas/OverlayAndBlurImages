//
//  MUGCollectionViewController.m
//  MUGColorPrototype
//
//  Created by Nick Stamas on 11/20/14.
//  Copyright (c) 2014 Nick Stamas. All rights reserved.
//

#import "MUGCollectionViewController.h"
#import "MUGCell.h"
#import "LEColorPicker.h"
#import "UIImageEffects.h"

@implementation MUGCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _mugs = [@[ @{@"image": @"g1", @"title": @"Astoria Moms"}, @{@"image": @"g2", @"title": @"CoInvent NYC"}, @{@"image": @"g3", @"title": @"Queens Running Club"}, @{@"image": @"g4", @"title": @"Queens Mamas"}, @{@"image": @"g5", @"title": @"ESL Language Learning"}] mutableCopy];
}

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return _mugs.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MUGCell *mugCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"MUGCell"
                                    forIndexPath:indexPath];
    
    UIImage *image;
    
    image = [UIImage imageNamed:[((NSDictionary*)_mugs[indexPath.row]) valueForKey:@"image"]];
    
    mugCell.backgroundImage.image = image;
    
    LEColorPicker *colorPicker = [[LEColorPicker alloc] init];
    LEColorScheme *colorScheme = [colorPicker colorSchemeFromImage:image];
    UIColor *colorOne = [colorScheme backgroundColor];
    CGFloat hue, saturation, brightness, alpha;
    [colorOne getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
    colorOne = [UIColor colorWithHue:hue saturation:MAX(saturation, 0.75) brightness:MIN(brightness, 0.7) alpha:alpha];
    mugCell.overlayView.backgroundColor = [colorOne colorWithAlphaComponent:0.75];

    mugCell.backgroundImage.image = [UIImageEffects imageByApplyingBlurToImage:mugCell.backgroundImage.image withRadius:2.0 tintColor:nil saturationDeltaFactor:1.0 maskImage:nil];
    mugCell.backgroundImage.contentMode = UIViewContentModeScaleAspectFill;

    mugCell.groupNameLabel.text = [((NSDictionary*)_mugs[indexPath.row]) valueForKey:@"title"];
    mugCell.groupSubLabel.text = @"102 moms";

    mugCell.clipsToBounds = YES;
    mugCell.layer.cornerRadius = 5;
    
    return mugCell;
}

@end
