//
//  AddWordViewController.m
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import "AddWordViewController.h"
#import "ViewController.h"
#import "Word.h"

@interface AddWordViewController ()

@end

@implementation AddWordViewController
@synthesize wordNameTextField, definitionTextView, firstSynonymTextField, secondSynonymTextField;
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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue isEqual:@"FinishedAddingWordSegue"]){
        ViewController *vc;
        Word *newWord = [Word new];
        newWord.name = wordNameTextField.text;
        newWord.definition = definitionTextView.text;
        newWord.synonyms = firstSynonymTextField.text;
        newWord.synonyms2 = secondSynonymTextField.text;
        
        [vc.wordsArray addObject:newWord];
        [vc.wordsDictionary setObject:[NSString stringWithFormat:@"%@", wordNameTextField.text] forKey:[NSString stringWithFormat:@"%@", wordNameTextField.text]];
    
        
    }
}
@end
