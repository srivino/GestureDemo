//
//  panViewController.m
//  GestureDemo
//
//  Created by Rajarajeswaran Shanmugam on 2/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "panViewController.h"

@interface panViewController ()

-(void)pangestureaction:(UIPanGestureRecognizer *)pangestureRecognizer;

@end

@implementation panViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIPanGestureRecognizer *pangesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pangestureaction:)];
    
    [self.testview addGestureRecognizer:pangesture];

}


-(void)pangestureaction:(UIPanGestureRecognizer *)pangestureRecognizer
{
    CGPoint touchpoint = [pangestureRecognizer locationInView:self.view];
    
    self.testview.center = touchpoint;
    
    CGPoint velocity = [pangestureRecognizer velocityInView:self.view];
    
    self.horizontalvelocitylabel.text = [NSString stringWithFormat:@"Horizontal Velocity %.2f Points/sec",velocity.x];
    self.verticalvelocitylabel.text = [NSString stringWithFormat:@"Vertical Velocity %.2f Points/sec",velocity.y];
    
    
    
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
