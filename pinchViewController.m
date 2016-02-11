//
//  pinchViewController.m
//  GestureDemo
//
//  Created by Rajarajeswaran Shanmugam on 2/10/16.
//  Copyright © 2016 janbaskclass. All rights reserved.
//

#import "pinchViewController.h"

@interface pinchViewController ()

-(void)pinchactiongesture:(UIPinchGestureRecognizer *)pinchrecognizer;

@end

@implementation pinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchactiongesture:)];
    
    [self.testview addGestureRecognizer:pinchGesture];

}

-(void)pinchactiongesture:(UIPinchGestureRecognizer *)pinchrecognizer
{
    pinchrecognizer.view.transform = CGAffineTransformScale(pinchrecognizer.view.transform,pinchrecognizer.scale,pinchrecognizer.scale);
    pinchrecognizer.scale = 1.0;
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
