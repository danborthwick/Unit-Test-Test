//
//  SingleLinkedListTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 15/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SingleLinkedLinkTests.h"

#import "CharListBuilder.h"

#include "LinkedListTypes.h"

@implementation SingleLinkedListTests

- (void)testGivenSingleElementList_thenLastElementIsFirstElement
{
    CharSingleLinkedList& singleElementList = *new CharSingleLinkedList('a');
    STAssertEquals(&singleElementList, &singleElementList.lastElement(), nil);
}

- (void)testGivenLongList_thenLastElementHasCorrectValue
{
    CharSingleLinkedList& list = [CharListBuilder listFromString:"abcdefg"];
    STAssertEquals(list.lastElement().value(), 'g', nil);
}

@end
