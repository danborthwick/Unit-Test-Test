//
//  CppStlArrayFibonnaciGeneratorTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CppStlArrayFibonacciGeneratorTests.h"

#include "CppStlArrayFibonacciGenerator.h"

@implementation CppStlArrayFibonacciGeneratorTests

using std::vector;

- (void)setUp
{
    [super setUp];
    generator = new CppStlArrayFibonacciGenerator;
}

- (void)tearDown
{
    delete generator;
    generator = NULL;
}

- (void)testWhenZeroElementsRequestedThenGeneratedSequenceIsEmpty
{
    vector<int>& generatedSequence = generator->generateSequenceWithLength(0);
    STAssertTrue(generatedSequence.size() == 0, nil);
    delete &generatedSequence;
}

- (void)testWhenTenElementsRequestedThenGeneratedSequenceHasTenElements
{
    vector<int>& generatedSequence = generator->generateSequenceWithLength(10);
    STAssertTrue(generatedSequence.size() == 10, nil);
    delete &generatedSequence;
}

- (void)testFirstElementIsOne
{
    vector<int>& generatedSequence = generator->generateSequenceWithLength(10);
    STAssertEquals(generatedSequence[0], 1 , @"First element is 1");
    delete &generatedSequence;
}

- (void)testSecondElementIsOne
{
    vector<int>& generatedSequence = generator->generateSequenceWithLength(10);
    STAssertEquals(generatedSequence[1], 1 , @"Second element is 1");
    delete &generatedSequence;
}

- (void)testFifthElementIsFive
{
    vector<int>& generatedSequence = generator->generateSequenceWithLength(10);
    STAssertEquals(generatedSequence[4], 5 , @"Fifth element is 5");
    delete &generatedSequence;
}
@end
