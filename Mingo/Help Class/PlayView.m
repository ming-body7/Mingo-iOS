//
//  PlayView.m
//  Mingo
//
//  Created by Ming Xu on 11/7/14.
//  Copyright (c) 2014 body7.com. All rights reserved.
//

#import "PlayView.h"

@implementation PlayView
@synthesize statusButton = _statusButton;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [_statusButton setTitle:@"status" forState:UIControlStateNormal];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
