//
//  PageContentViewController.h
//  UIPlageViewControllerDemo
//
//  Created by test on 5/11/16.
//  Copyright © 2016 NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *BackgroundImageView;




@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;


@end