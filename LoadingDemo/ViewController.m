//
//  ViewController.m
//  LoadingDemo
//
//  Created by L on 16/3/29.
//  Copyright © 2016年 L. All rights reserved.
//

#import "ViewController.h"
#import "HalfCircleActivityIndicatorView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet HalfCircleActivityIndicatorView *loading;
- (IBAction)action:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.loading startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)action:(id)sender {
    UIButton *button = (UIButton *)sender;
    if ([self.loading isAnimating]) {
        [self.loading stopAnimating];
        [button setTitle:@"开始" forState:UIControlStateNormal];
    }else{
        [self.loading startAnimating];
        [button setTitle:@"停止" forState:UIControlStateNormal];
    }
}
@end
