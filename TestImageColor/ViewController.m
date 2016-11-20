//
//  ViewController.m
//  TestImageColor
//
//  Created by Ray on 2016/11/20.
//  Copyright © 2016年 Ray. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [_favoriteButton setImage:[[UIImage imageNamed:@"Heart"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    _favoriteButton.imageView.tintColor = [UIColor blackColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)favoriteButtonAction:(UIButton *)sender {
    sender.selected = !sender.selected;
    
    if (sender.selected) {
        _favoriteButton.imageView.tintColor = [UIColor redColor];
    }
    else {
        _favoriteButton.imageView.tintColor = [UIColor blackColor];
    }
}

@end
