//
//  TapViewController.m
//  GestureDemo
//
//  Created by Rajarajeswaran Shanmugam on 2/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

-(void)singletapaction:(UITapGestureRecognizer *)tapGestureRecognizer;
-(void)doubletapaction:(UITapGestureRecognizer *)tapGestureRecognizer;

@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(singletapaction:)];
    
    [self.testview addGestureRecognizer:singleTapGesture];
    
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubletapaction:)];
    
    doubleTapGesture.numberOfTapsRequired = 2;
    doubleTapGesture.numberOfTouchesRequired = 2;
    
    [self.testview addGestureRecognizer:doubleTapGesture];
    
}

-(void)singletapaction:(UITapGestureRecognizer *)tapGestureRecognizer
{
    CGFloat Newwidth = 100.0;
    
    if (self.testview.frame.size.width == 100.0)
    {
        Newwidth = 200.0;
    }
    
    CGPoint currentcenter = self.testview.center;
    
    self.testview.frame = CGRectMake(self.testview.frame.origin.x, self.testview.frame.origin.y, Newwidth, self.testview.frame.size.height);
    self.testview.center = currentcenter;
}

-(void)doubletapaction:(UITapGestureRecognizer *)tapGestureRecognizer
{
    CGFloat Newwidth = 100.0;
    CGFloat Newheight = 100.0;
    
    if (self.testview.frame.size.width == 100.0 && self.testview.frame.size.height == 100.0)
    {
        Newwidth = 200.0;
        Newheight = 200.0;
    }
    
    CGPoint Newcenter = self.testview.center;
    
    self.testview.frame = CGRectMake(self.testview.frame.origin.x, self.testview.frame.origin.y, Newwidth, Newheight);
    self.testview.center = Newcenter;
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
