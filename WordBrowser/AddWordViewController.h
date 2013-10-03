//
//  AddWordViewController.h
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddWordViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *wordNameTextField;
@property (weak, nonatomic) IBOutlet UITextView *definitionTextView;
@property (weak, nonatomic) IBOutlet UITextField *firstSynonymTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondSynonymTextField;

@end
