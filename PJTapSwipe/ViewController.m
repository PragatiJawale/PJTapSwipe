//
//  ViewController.m
//  PJTapSwipe
//
//  Created by Student P_06 on 28/09/16.
//  Copyright © 2016 pragati jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tapGesture =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap)];
    tapGesture.numberOfTapsRequired=1;
    self.view.userInteractionEnabled=YES;
    [self.view addGestureRecognizer:tapGesture];
   // UILabel *myLabel =[[UILabel alloc]initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)]
    UISwipeGestureRecognizer *swipeRightGesture =[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleRightSwip)];
    [swipeRightGesture setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:swipeRightGesture];
    
    UISwipeGestureRecognizer *swipeLeftGesture =[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleLeftSwip)];
    [swipeLeftGesture setDirection:UISwipeGestureRecognizerDirectionLeft];
    
    [self.view addGestureRecognizer:swipeLeftGesture];
    
    UISwipeGestureRecognizer *swipeUpGesture =[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleUpSwip)];
    [swipeUpGesture setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.view addGestureRecognizer:swipeUpGesture];
    
    UISwipeGestureRecognizer *swipeDownGesture =[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleDownSwip)];
    [swipeDownGesture setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:swipeDownGesture];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
-(void)handleTap{
    self.view.backgroundColor =[UIColor redColor];

}
-(void)handleRightSwip{
    self.view.backgroundColor =[UIColor cyanColor];
}
-(void)handleLeftSwip{
    self.view.backgroundColor =[UIColor purpleColor];
}
-(void)handleUpSwip{
    self.view.backgroundColor =[UIColor yellowColor];
}
-(void)handleDownSwip{
    self.view.backgroundColor =[UIColor greenColor];
}
@end
