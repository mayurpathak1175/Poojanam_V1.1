//
//  poojaListViewController.m
//  poojanam_v1.1
//
//  Created by Mayur Pathak on 7/29/16.
//  Copyright © 2016 Mayur Pathak. All rights reserved.
//

#import "poojaListViewController.h"
#import "languageViewController.h"

@interface poojaListViewController ()

@end

NSArray *hindiPooja;
NSArray *marathiPooja;
NSArray *gujaratiPooja;
NSArray *telaguPooja;
NSArray *tamilPooja;
NSArray *bengaliPooja;

NSDictionary *masterPoojaDict;

NSString *selectedLanguage;
NSString *selectedPoojaName;


@implementation poojaListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    selectedLanguage = [[NSUserDefaults standardUserDefaults] objectForKey:@"chosenLanguage"];
    NSLog(@"selected language is %@", selectedLanguage);
    
    hindiPooja = [NSArray arrayWithObjects:@"Karva Chouth",@"HP2", @"HP3",@"HP4", @"HP5",nil];
    marathiPooja = [NSArray arrayWithObjects:@"Satya Narayan Pooja",@"MP2",@"MP3", nil];
    gujaratiPooja = [NSArray arrayWithObjects:@"GP1",@"GP2",@"GP3",@"GP4", @"GP5", nil];
    telaguPooja = [NSArray arrayWithObjects:@"TP1",@"TP2",@"TP3",@"TP4", @"TP5", nil];
    tamilPooja = [NSArray arrayWithObjects:@"TML1",@"TML2",@"TML3",@"TML4", @"TML5", nil];
    bengaliPooja = [NSArray arrayWithObjects:@"BP1",@"BP2",@"BP3",@"BP4", @"BP5", nil];
    
    masterPoojaDict = @{@"Hindi": hindiPooja ,
                        @"Marathi": marathiPooja,
                        @"Telagu": telaguPooja,
                        @"Tamil":tamilPooja,
                        @"Gujarati": gujaratiPooja,
                        @"Bengali":bengaliPooja};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[masterPoojaDict objectForKey:selectedLanguage] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"poojaListCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [[masterPoojaDict objectForKey:selectedLanguage] objectAtIndex:(indexPath.row)];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    selectedPoojaName = [[masterPoojaDict objectForKey:selectedLanguage] objectAtIndex:(indexPath.row)];
    
    [[NSUserDefaults standardUserDefaults] setObject:selectedPoojaName forKey:@"playingPooja"];
    
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
