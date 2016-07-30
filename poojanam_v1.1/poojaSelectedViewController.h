//
//  poojaSelectedViewController.h
//  poojanam_v1.1
//
//  Created by Mayur Pathak on 7/29/16.
//  Copyright © 2016 Mayur Pathak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "poojaListViewController.h"

@interface poojaSelectedViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *playingSelectedPoojaLabel;
@property (weak, nonatomic) IBOutlet UIButton *samagreeButton;
@property (weak,nonatomic) IBOutlet UIButton *poojaVidhiButton;
@property (weak, nonatomic) IBOutlet UIButton *audioButton;

-(IBAction)samagreeButtonPressed:(id)sender;
-(IBAction)poojaVidhiButtonPressed:(id)sender;
-(IBAction)audioButtonPressed:(id)sender;
@end
