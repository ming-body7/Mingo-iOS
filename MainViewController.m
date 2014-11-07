//
//  MainViewController.m
//  Mingo
//
//  Created by Ming Xu on 11/7/14.
//  Copyright (c) 2014 body7.com. All rights reserved.
//

#import "MainViewController.h"
#import "DashBoardTableViewController.h"
#import "MyViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    
    self.dataSource = self;
    self.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - ViewPagerDataSource
- (NSUInteger)numberOfTabsForViewPager:(ViewPagerController *)viewPager {
    return 2;
}

#pragma mark - ViewPagerDataSource
- (UIView *)viewPager:(ViewPagerController *)viewPager viewForTabAtIndex:(NSUInteger)index {
    
    UILabel *label = [UILabel new];
    switch (index) {
        case 0:
            label.text = @"Dashboard";
            break;
        case 1:
            label.text = @"Me";
            break;
        default:
            break;
    }
    //label.text = [NSString stringWithFormat:@"Tab #%i", index];
    [label sizeToFit];
    
    return label;
}

- (UIViewController *)viewPager:(ViewPagerController *)viewPager contentViewControllerForTabAtIndex:(NSUInteger)index {
    
    //UIViewController *cvc = [self.storyboard instantiateViewControllerWithIdentifier:@"contentViewController"];
    UIViewController *cvc;
    switch (index) {
        case 0:
            cvc = [[DashBoardTableViewController alloc] init];
            break;
        case 1:
            cvc = [[MyViewController alloc] init];
        default:
            break;
    }
    return cvc;
}
@end
