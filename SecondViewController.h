//
//  SecondViewController.h
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *wordNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *definitionLabel;
@property (weak, nonatomic) IBOutlet UILabel *synonymsLabel;
@property (weak, nonatomic) IBOutlet UILabel *synonyms2Label;
@property (strong, nonatomic) NSMutableArray *synonymsArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
