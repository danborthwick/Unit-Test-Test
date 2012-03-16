//
//  MidpointFinderTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MidpointFinderTests.h"

#include "MidpointFinder.h"
#import <list>

using std::list;

@implementation MidpointFinderTests

list<int>* myList;

- (void)setUp
{
    [super setUp];
    midpointFinder = new MidpointFinder;
    myList = new std::list<int>();
}

- (void)tearDown
{
    delete midpointFinder;
    midpointFinder = NULL;
    delete myList;
    myList = NULL;
}

+ (void) initialiseList:(list<int>*)pList withIntegerSequenceOfLength:(int)length
{
    for (int i=1; i <= length; i++) {
        pList->push_back(i);
    }
}

- (void)testWhenListIsEmpty_thenMidpointIsInvalid
{
    STAssertEquals(midpointFinder->midpointOf(*myList), MidpointFinder::NO_VALID_MIDPOINT, nil);
}

- (void)testWhenListIsSingleElement_thenMidpointIsOnlyElement
{
    myList->push_back(5);
    STAssertEquals(midpointFinder->midpointOf(*myList), 5, nil);
}

- (void)testWhenListHasTwoElements_thenMidpointIsFirstElement
{
    myList->push_back(3);
    myList->push_back(7);
    STAssertEquals(midpointFinder->midpointOf(*myList), 3, nil);
}

- (void) testWhenListHasFiveElements_thenMidpointIsThirdElement
{
    [MidpointFinderTests initialiseList:myList withIntegerSequenceOfLength:5];
    STAssertEquals(midpointFinder->midpointOf(*myList), 3, nil);
}

- (void) testWhenListHasSixElements_thenMidpointIsThirdElement
{
    [MidpointFinderTests initialiseList:myList withIntegerSequenceOfLength:6];
    STAssertEquals(midpointFinder->midpointOf(*myList), 3, nil);
}

- (void) testWhenListHas101Elements_thenMidpointIsFiftiethElement
{
    [MidpointFinderTests initialiseList:myList withIntegerSequenceOfLength:101];
    STAssertEquals(midpointFinder->midpointOf(*myList), 51, nil);
}

@end
