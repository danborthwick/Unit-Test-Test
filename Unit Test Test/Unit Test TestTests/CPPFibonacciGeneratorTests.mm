//
//  CPPFibonacciGeneratorTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CPPFibonacciGeneratorTests.h"

#include "CppIntArrayFibonacciGenerator.h"

@implementation CPPFibonacciGeneratorTests

- (void)setUp
{
    [super setUp];
    generator = new CppIntArrayFibonacciGenerator;
}

- (void)tearDown
{
    delete generator;
    generator = NULL;
}

- (void)testSequenceIsNotNull
{
    STAssertTrue(generator->generateSequenceWithLength(10) != NULL, nil);
}

- (void)testFirstElementIsOne
{
    int* generatedSequence = generator->generateSequenceWithLength(10);
    STAssertEquals(generatedSequence[0], 1 , @"First element is 1");
}

- (void)testSecondElementIsOne
{
    int* generatedSequence = generator->generateSequenceWithLength(10);
    STAssertEquals(generatedSequence[1], 1 , @"Second element is 1");
}

- (void)testFifthElementIsFive
{
    int* generatedSequence = generator->generateSequenceWithLength(10);
    STAssertEquals(generatedSequence[4], 5 , @"Fifth element is 5");
}

- (void)testWhenZeroElementsRequestedThenGeneratedSequenceIsNull
{
    int* generatedSequence = generator->generateSequenceWithLength(0);
    STAssertTrue(generatedSequence == NULL, nil);
}

@end
