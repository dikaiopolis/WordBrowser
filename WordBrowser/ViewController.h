//
//  ViewController.h
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Word.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *wordsArray;
@property (strong, nonatomic) NSMutableDictionary *wordsDictionary;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) Word *word;
- (IBAction)onAddWordButtonPressed:(id)sender;

@end
