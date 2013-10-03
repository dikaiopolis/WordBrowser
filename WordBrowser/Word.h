//
//  Word.h
//  WordBrowser
//
//  Created by Daniel Baldwin on 10/2/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Word : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* definition;
@property (strong, nonatomic) NSString* synonyms;
@property (strong, nonatomic) NSString* synonyms2;
@property (strong, nonatomic) NSMutableArray *synonymsMutableArray;

-(id)initWithName:(NSString*)wordName andDefinition:(NSString*)wordDefinition andSynonyms:(NSString *)wordSynonyms andSecondSynonym:(NSString*)secondSynonym;
@end
