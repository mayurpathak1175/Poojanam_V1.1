//
//  poojaSelectedViewController.m
//  poojanam_v1.1
//
//  Created by Mayur Pathak on 7/29/16.
//  Copyright © 2016 Mayur Pathak. All rights reserved.
//

#import "poojaSelectedViewController.h"

@interface poojaSelectedViewController ()

@end

NSDictionary *poojaDetailsDict;

@implementation poojaSelectedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = [[NSUserDefaults standardUserDefaults] objectForKey:@"playingPooja"];
    
    poojaDetailsDict = @{@"Karva Chouth":@"/Users/mayurpathak/Downloads/JaiGanesh.mp3",
                         @"HP2": @"/Users/mayurpathak/Downloads/Sukhakarta Dukhaharta.mp3",
                         @"HP3": @"Hindi Pooja 3.mp3",
                         @"HP4": @"Hindi Pooja 4.mp3",
                         @"HP5": @"Hindi Pooja 5.mp3",
                         @"MP1":@"Marathi Pooja 1.mp3",
                         @"MP2": @"Marathi Pooja 2.mp3",
                         @"MP3":@"Marathi Pooja 3.mp3",
                         @"Satya Narayan Pooja":@"Playing Satya Narayan Pooja"};
    
    self.playingSelectedPoojaLabel.text = [poojaDetailsDict objectForKey:(self.navigationItem.title)];
    
}

-(void)samagreeButtonPressed:(id)sender {
    NSLog(@"Samagree Button Pressed");
}

-(void)poojaVidhiButtonPressed:(id)sender {
    NSLog(@"Samagree Button Pressed");
}

-(void)audioButtonPressed:(id)sender {
    NSLog(@"Samagree Button Pressed");
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
