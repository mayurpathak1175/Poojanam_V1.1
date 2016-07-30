//
//  poojaListViewController.h
//  poojanam_v1.1
//
//  Created by Mayur Pathak on 7/29/16.
//  Copyright © 2016 Mayur Pathak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface poojaListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong,nonatomic) NSString *selectedLanguage;
@property (weak, nonatomic) IBOutlet UITableView *poojaList;
@end
