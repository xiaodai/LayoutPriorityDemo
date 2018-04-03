//
//  ViewController.m
//  LayoutPriorityDemo
//
//  Created by yangaichun on 2018/4/3.
//  Copyright © 2018年 yangaichun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *midView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)taped:(id)sender {
    [self.midView removeFromSuperview];
    [UIView animateWithDuration:1 delay:0.2 usingSpringWithDamping:0.5 initialSpringVelocity:15 options:UIViewAnimationOptionCurveEaseOut animations:^{
        [self.view layoutIfNeeded];
    } completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
