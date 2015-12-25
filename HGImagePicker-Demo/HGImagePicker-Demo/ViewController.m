//
//  ViewController.m
//  HGImagePicker-Demo
//
//  Created by Hiren Gujarati on 10/23/15.
//  Copyright © 2015 HG. All rights reserved.
//

#import "ViewController.h"
#import "HGImagePicker.h"

@interface ViewController ()
{
    IBOutlet UIImageView *theImageView;
    HGImagePicker *imagePicker;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onChooseImage:(id)sender {
    
    imagePicker = [HGImagePicker new];
    [imagePicker showImagePicker:self withNavigationColor:[UIColor orangeColor] imagePicked:^(UIImage *image) {
        theImageView.image = image;
    } imageCanceled:^{
        NSLog(@"Image canceled");
    }];
}

@end
