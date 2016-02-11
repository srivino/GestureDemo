//
//  rotationViewController.m
//  GestureDemo
//
//  Created by Rajarajeswaran Shanmugam on 2/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "rotationViewController.h"

@interface rotationViewController ()

-(void)rotationgetureaction:(UIRotationGestureRecognizer *)rotationGesture;

@end

@implementation rotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIRotationGestureRecognizer *rotationgesturerecognizer = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotationgetureaction:)];
    [self.testview addGestureRecognizer:rotationgesturerecognizer];


}
-(void)rotationgetureaction:(UIRotationGestureRecognizer *)rotationGesture
{
    self.testview.transform = CGAffineTransformRotate(self.testview.transform, rotationGesture.rotation);
    rotationGesture.rotation = 0.0;
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
