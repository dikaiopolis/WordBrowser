//
//  Word.m
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import "Word.h"

@implementation Word
@synthesize name, definition, synonyms, synonyms2, synonymsMutableArray;
-(id)initWithName:(NSString*)wordName andDefinition:(NSString*)wordDefinition andSynonyms:(NSString *)wordSynonyms andSecondSynonym:(NSString*)secondSynonym{
    self = [super init];
    {
        name = wordName;
        definition = wordDefinition;
        synonyms = wordSynonyms;
        synonyms2 = secondSynonym;

    }
    return self;
}

-(id) init {
    return [self initWithName:@"Unknown" andDefinition:@"Unknown" andSynonyms:@"Unknown" andSecondSynonym:@"Unknown"];
}

@end
