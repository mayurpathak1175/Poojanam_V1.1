//
//  languageViewController.m
//  poojanam_v1.1
//
//  Created by Mayur Pathak on 7/26/16.
//  Copyright © 2016 Mayur Pathak. All rights reserved.
//

#import "languageViewController.h"


@interface languageViewController ()

@end

NSArray *languageArray;
NSArray *devnagariLanguageArray;

@implementation languageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    languageArray = [NSArray arrayWithObjects:@"Hindi",@"Marathi",@"Telugu",@"Tamil",@"Gujarati",@"Bengali", nil];
    devnagariLanguageArray = [NSArray arrayWithObjects: @"हिंदि",
                      @"मराठी",
                      @"తెలుగు",
                      @"தமிழ்",
                      @"বিংগালী",
                      @"ગુજરાતી",nil];
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"chosenLanguage"] != nil) {
        NSLog(@"User already chosen language");
        
        self.tabBarController.selectedIndex = 1;
    }

self.navigationItem.title = @"Choose Language";
    NSLog(@"Choose Language");
}

-(void)viewDidAppear:(BOOL)animated {
    self.navigationItem.title = @"Change Language";
    NSLog(@"Change Language");

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [languageArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.languageTable dequeueReusableCellWithIdentifier:@"languageCell"];
    cell.textLabel.text = [devnagariLanguageArray objectAtIndex:(indexPath.row)];
    cell.detailTextLabel.text = [languageArray objectAtIndex:(indexPath.row)];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _selectedRow = indexPath;
    _checkLanguageSelection = [languageArray objectAtIndex:(self.selectedRow.row)];
    
    [[NSUserDefaults standardUserDefaults] setObject:self.checkLanguageSelection forKey:@"chosenLanguage"];
    
    [tableView reloadData];
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
