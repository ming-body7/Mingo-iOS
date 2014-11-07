//
//  MainViewController.h
//  Mingo
//
//  Created by Ming Xu on 11/7/14.
//  Copyright (c) 2014 body7.com. All rights reserved.
//

#import "ViewPagerController.h"

@interface MainViewController : ViewPagerController<ViewPagerDataSource,ViewPagerDelegate>
@property (strong, nonatomic) IBOutlet UIView *statusView;

@end
