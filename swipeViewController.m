//
//  swipeViewController.m
//  GestureDemo
//
//  Created by Rajarajeswaran Shanmugam on 2/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "swipeViewController.h"

@interface swipeViewController ()

-(void)slideToRightwithGesture:(UISwipeGestureRecognizer *)gestureRecognizer;
-(void)slideToLeftwithGesture:(UISwipeGestureRecognizer *)gestureRecognizer;

@end

@implementation swipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *swiperightorange = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(slideToRightwithGesture:)];
    swiperightorange.direction = UISwipeGestureRecognizerDirectionRight;
    
   UISwipeGestureRecognizer *swipeleftorange = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(slideToLeftwithGesture:)];
    
    swipeleftorange.direction = UISwipeGestureRecognizerDirectionLeft;
   
    [self.orangeview addGestureRecognizer:swiperightorange];
    [self.orangeview addGestureRecognizer:swipeleftorange];
    
    UISwipeGestureRecognizer *swiperightblack = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(slideToRightwithGesture:)];
    swiperightblack.direction = UISwipeGestureRecognizerDirectionRight;
    [self.Blackview addGestureRecognizer:swiperightblack];
    
    UISwipeGestureRecognizer *swipeleftgreen = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(slideToLeftwithGesture:)];
    swipeleftgreen.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.Greenview addGestureRecognizer:swipeleftgreen];
    
    
}

-(void)slideToRightwithGesture:(UISwipeGestureRecognizer *)gestureRecognizer
{
    [UIView animateWithDuration:0.5 animations:^{
        
        self.orangeview.frame = CGRectOffset(self.orangeview.frame, 320.0, 0.0);
        self.Blackview.frame = CGRectOffset(self.Blackview.frame, 320.0, 0.0);
        self.Greenview.frame = CGRectOffset(self.Greenview.frame, 320.0, 0.0);
    }];
}

-(void)slideToLeftwithGesture:(UISwipeGestureRecognizer *)gestureRecognizer
{
    [UIView animateWithDuration:0.5 animations:^{
        
        self.orangeview.frame = CGRectOffset(self.orangeview.frame, -320.0, 0.0);
        self.Blackview.frame = CGRectOffset(self.Blackview.frame, -320.0, 0.0);
        self.Greenview.frame = CGRectOffset(self.Greenview.frame, -320.0, 0.0);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
