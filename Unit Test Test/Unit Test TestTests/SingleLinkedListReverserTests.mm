//
//  SingleLinkedListReverserTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SingleLinkedListReverserTests.h"

#import "CharListBuilder.h"

#include "SingleLinkedList.h"
#include "SingleLinkedListReverser.h"

@implementation SingleLinkedListReverserTests

- (void)setUp
{
    [super setUp];
    reverser = new SingleLinkedListReverser();
}

- (void)tearDown
{
    delete reverser;
    reverser = NULL;
    [super tearDown];
}

- (void) assertCharList:(CharSingleLinkedList const&)list matchesString:(const char*)matchString
{
    const char* firstUnmatchedCharacter = matchString;
    CharSingleLinkedList const* pFirstUnmatchedListElement;
    
    for (pFirstUnmatchedListElement = &list; 
         pFirstUnmatchedListElement != NULL;
         pFirstUnmatchedListElement = &pFirstUnmatchedListElement->nextElement())
    {
        STAssertFalse(*firstUnmatchedCharacter == '\0', @"All characters matched but list has more elements");
        STAssertEquals(*firstUnmatchedCharacter, pFirstUnmatchedListElement->value(), @"Char list mismatch");
        firstUnmatchedCharacter++;
    }
    STAssertEquals(*firstUnmatchedCharacter, '\0', @"Unmatched characters \"%s\" remain but end of list reached", firstUnmatchedCharacter);
}

- (void)testWhenSingleElementListIsReversed_thenListIsUnaffected
{
    CharSingleLinkedList& originalList = [CharListBuilder listFromString:"a"];
    CharSingleLinkedList& reversedList = reverser->reverse(originalList);
    [self assertCharList:reversedList matchesString:"a"];
}

- (void)testWhenTwoElementListIsReversed_thenElementsAreInReverseOrder
{
    CharSingleLinkedList& originalList = [CharListBuilder listFromString:"ab"];
    CharSingleLinkedList& reversedList = reverser->reverse(originalList);
    [self assertCharList:reversedList matchesString:"ba"];
}

- (void)testWhenThreeElementListIsReversed_thenElementsAreInReverseOrder
{
    CharSingleLinkedList& originalList = [CharListBuilder listFromString:"abc"];
    CharSingleLinkedList& reversedList = reverser->reverse(originalList);
    [self assertCharList:reversedList matchesString:"cba"];    
}

- (void)testWhenLongListIsReversed_thenElementsAreInReverseOrder
{
    CharSingleLinkedList& originalList = [CharListBuilder listFromString:"abcdefghijklmnop"];
    CharSingleLinkedList& reversedList = reverser->reverse(originalList);
    [self assertCharList:reversedList matchesString:"ponmlkjihgfedcba"];    
}

@end
