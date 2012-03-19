//
//  SecondHighestElementFinderTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 16/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondHighestElementFinderTests.h"

#include "SecondHighestElementFinder.h"
#import <vector>

using std::vector;

@implementation SecondHighestElementFinderTests

- (void)testWhenArrayHasOneElement_thenExceptionIsThrown
{
    vector<int> singleElement(1, 42);
    
    bool exceptionWasThrown = false;
    
    try {
        SecondHighestElementFinder* pFinder = new SecondHighestElementFinder;
        pFinder->findSecondHighestElementIn(singleElement);
    }
    catch (SecondHighestElementFinderException& e) {
        exceptionWasThrown = true;
    }
    STAssertTrue(exceptionWasThrown, @"Expected single element array to throw an exception");
}

- (void)testGivenArrayOfDuplicates_thenExceptionIsThrown
{
    vector<int> duplicates(5, 42);
    
    bool exceptionWasThrown = false;
    
    try {
        SecondHighestElementFinder* pFinder = new SecondHighestElementFinder;
        pFinder->findSecondHighestElementIn(duplicates);
    }
    catch (SecondHighestElementFinderException& e) {
        exceptionWasThrown = true;
    }
    STAssertTrue(exceptionWasThrown, @"Expected array of duplicates to throw an exception");
}

- (void)testWhenArrayHasTwoAscendingElements_thenLowestisFound
{
    int intValues[] = { 100, 200 };
    vector<int> array(intValues, intValues + sizeof(intValues) / sizeof(int));
    
    SecondHighestElementFinder* pFinder = new SecondHighestElementFinder;
    STAssertEquals(pFinder->findSecondHighestElementIn(array), 100, nil);
}

- (void)testWhenArrayHasTwoDescendingElements_thenLowestisFound
{
    int intValues[] = { 200, 100 };
    vector<int> array(intValues, intValues + sizeof(intValues) / sizeof(int));
    
    SecondHighestElementFinder* pFinder = new SecondHighestElementFinder;
    STAssertEquals(pFinder->findSecondHighestElementIn(array), 100, nil);
}

- (void)testWhenArrayHasManyRandomElements_thenSecondLowestIsFound
{
    int intValues[] = { 200, 100, 300, 500, 400, 100 };
    vector<int> array(intValues, intValues + sizeof(intValues) / sizeof(int));
    
    SecondHighestElementFinder* pFinder = new SecondHighestElementFinder;
    STAssertEquals(pFinder->findSecondHighestElementIn(array), 400, nil);
}


@end
