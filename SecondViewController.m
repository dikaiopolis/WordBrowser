//
//  SecondViewController.m
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "Word.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize wordNameLabel, definitionLabel, synonymsLabel,synonyms2Label, synonymsArray, tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    synonymsLabel.hidden = YES;
    synonyms2Label.hidden = YES;
    synonymsArray = [[NSMutableArray alloc] init];
    [super viewDidLoad];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [synonymsArray count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *id = @"abc";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
    }
    
    cell.textLabel.text = synonymsArray[indexPath.row];
    
    return cell;
}
@end
