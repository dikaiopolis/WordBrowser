
//  ViewController.m
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import "ViewController.h"
#import "Word.h"
#import "SecondViewController.h"
#import "AddWordViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize wordsArray, wordsDictionary, tableView, word;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Word *pizza = [[Word alloc] initWithName:@"Pizza" andDefinition:@"flat, round, good tasting food" andSynonyms:@"Pie" andSecondSynonym:@"Cake"];
    Word *popcorn = [[Word alloc] initWithName:@"Popcorn" andDefinition:@"popped corn that tastes good" andSynonyms:@"Popped" andSecondSynonym:@"Indian Corn"];
    Word *iceCream = [[Word alloc] initWithName:@"Ice Cream" andDefinition:@"Frozen cream that is sweetened" andSynonyms:@"Sherbet" andSecondSynonym:@"Frozen Custard"];
    Word *steak = [[Word alloc] initWithName:@"Steak" andDefinition:@"Red meat that is cut from a cow" andSynonyms:@"Beef" andSecondSynonym:@"Meat"];
    Word *chicken = [[Word alloc] initWithName:@"Chicken" andDefinition:@"White meat that comes from a chicken" andSynonyms:@"Poultry" andSecondSynonym:@"Poulet"];
    Word *bubbles = [[Word alloc] initWithName:@"Bubbles" andDefinition:@"A pocket of air surrounded by something" andSynonyms:@"Gas" andSecondSynonym:@"Air"];
    Word *computer = [[Word alloc] initWithName:@"Computer" andDefinition:@"An electronic devices you do stuff on" andSynonyms:@"PC" andSecondSynonym:@"Mac"];
    Word *girl = [[Word alloc] initWithName:@"Girl" andDefinition:@"A young lady" andSynonyms:@"woman" andSecondSynonym:@"lady"];
    Word *hat = [[Word alloc] initWithName:@"Hat" andDefinition:@"Something you wear on your head" andSynonyms:@"Cap" andSecondSynonym:@"Headwear"];
    Word *sentence = [[Word alloc] initWithName:@"Sentence" andDefinition:@"A collection of words" andSynonyms:@"Phrase" andSecondSynonym:@"Writing"];
    Word *memory = [[Word alloc] initWithName:@"Memory" andDefinition:@"What you remember" andSynonyms:@"Thoughts" andSecondSynonym:@"Brain"];
    Word *new = [[Word alloc] initWithName:@"New" andDefinition:@"Something that is new" andSynonyms:@"Not old" andSecondSynonym:@"Nice"];
    Word *dog = [[Word alloc] initWithName:@"Dog" andDefinition:@"An animal that people keep as a pet" andSynonyms:@"Puppy" andSecondSynonym:@"Pup"];
    Word *cat = [[Word alloc] initWithName:@"Cat" andDefinition:@"An animal that people keep as a pet that is worse than a dog" andSynonyms:@"Kitten" andSecondSynonym:@"Kitty"];
    Word *car = [[Word alloc] initWithName:@"Car" andDefinition:@"Something you drive" andSynonyms:@"Pickup" andSecondSynonym:@"Ride"];
    Word *plane = [[Word alloc] initWithName:@"Plane" andDefinition:@"Vehicle you fly in" andSynonyms:@"Airplane" andSecondSynonym:@"Jet"];
    Word *boat = [[Word alloc] initWithName:@"Boat" andDefinition:@"Vehicle you drive on water" andSynonyms:@"Canoe" andSecondSynonym:@"Ship"];
    Word *road = [[Word alloc] initWithName:@"Road" andDefinition:@"Surface you drive your land vehicles on" andSynonyms:@"Highway" andSecondSynonym:@"Interstate"];
    Word *duck = [[Word alloc] initWithName:@"Duck" andDefinition:@"Flying animal that quacks" andSynonyms:@"Bird" andSecondSynonym:@"Goose"];
    Word *ball = [[Word alloc] initWithName:@"Ball" andDefinition:@"Object that you throw" andSynonyms:@"Football" andSecondSynonym:@"Basketball"];
    Word *burger = [[Word alloc] initWithName:@"Burger" andDefinition:@"Thing you eat" andSynonyms:@"Cheeseburger" andSecondSynonym:@"Hamburger"];
    
//    wordsArray = @[pizza, popcorn, iceCream, steak, chicken, bubbles, computer, girl, hat, sentence, memory, new, dog, cat, car, plane, boat, road, duck, ball, burger].mutableCopy;
    
    [wordsArray enumerateObjectsUsingBlock:^(Word *words, NSUInteger idx, BOOL *stop) {
        [words.synonymsMutableArray addObject:words.synonyms ];
        [words.synonymsMutableArray addObject:words.synonyms2 ];
    }];
    
    [wordsDictionary setObject:pizza forKey:@"Pizza"];
    [wordsDictionary setObject:popcorn forKey:@"Popcorn"];
    [wordsDictionary setObject:iceCream forKey:@"Ice Cream"];
    [wordsDictionary setObject:steak forKey:@"Steak"];
    [wordsDictionary setObject:chicken forKey:@"Chicken"];
    [wordsDictionary setObject:bubbles forKey:@"Bubbles"];
    [wordsDictionary setObject:computer forKey:@"Computer"];
    [wordsDictionary setObject:girl forKey:@"Girl"];
    [wordsDictionary setObject:hat forKey:@"Hat"];
    [wordsDictionary setObject:sentence forKey:@"Sentence"];
    [wordsDictionary setObject:memory forKey:@"Memory"];
    [wordsDictionary setObject:new forKey:@"New"];
    [wordsDictionary setObject:dog forKey:@"Dog"];
    [wordsDictionary setObject:cat forKey:@"Cat"];
    [wordsDictionary setObject:car forKey:@"Car"];
    [wordsDictionary setObject:plane forKey:@"Plane"];
    [wordsDictionary setObject:boat forKey:@"Boat"];
    [wordsDictionary setObject:road forKey:@"Road"];
    [wordsDictionary setObject:duck forKey:@"Duck"];
    [wordsDictionary setObject:ball forKey:@"Ball"];
    [wordsDictionary setObject:burger forKey:@"Burger"];
    
    [wordsDictionary enumerateKeysAndObjectsUsingBlock:^(id key, Word *wordsArray, BOOL *stop) {
        NSLog(@"%@", key);
    }];
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender{
    
    if ([segue  isEqual: @"SegueToAddWord"]){
        Word *newWord = [Word new];
    } else {
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    NSString *key = [NSString stringWithFormat:@"%@", wordsDictionary.allKeys[indexPath.row]];
    
    [wordsDictionary objectForKey:key];
    
    word = [wordsDictionary objectForKey:key];
    
    SecondViewController *svc = [segue destinationViewController];
    
    [svc view];
    
    svc.wordNameLabel.text = [NSString stringWithFormat:@"%@", word.name];
     svc.definitionLabel.text = [NSString stringWithFormat:@"%@", word.definition];
     svc.synonymsLabel.text = [NSString stringWithFormat:@"%@", word.synonyms];
     svc.synonyms2Label.text = [NSString stringWithFormat:@"%@", word.synonyms2];
    [svc.synonymsArray addObject:word.synonyms];
    [svc.synonymsArray addObject:word.synonyms2];
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [wordsDictionary count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *id = @"abc";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", wordsDictionary.allKeys[indexPath.row]];
    
    return cell;
}


-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    wordsDictionary = [NSMutableDictionary new];
    
    return self;
}

@end
