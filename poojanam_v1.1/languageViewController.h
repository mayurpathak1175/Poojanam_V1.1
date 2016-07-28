//
//  languageViewController.h
//  poojanam_v1.1
//
//  Created by Mayur Pathak on 7/26/16.
//  Copyright © 2016 Mayur Pathak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface languageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic)IBOutlet UITableView *languageTable;
@property (nonatomic,readwrite) NSIndexPath *selectedRow;
@property (strong, nonatomic) NSString *checkLanguageSelection;
@end
