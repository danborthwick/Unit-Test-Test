//
//  FibonnaciGeneratorTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FibonnaciGeneratorTests.h"
#import "FibonacciGenerator.h"

@implementation FibonnaciGeneratorTests

FibonacciGenerator* generator;

- (void)setUp
{
    [super setUp];
    generator = [FibonacciGenerator new];
}

- (void)tearDown
{
    generator = NULL;
    [super tearDown];
}

- (void)testFirstElementIsOne
{
    NSArray* generatedSequence = [generator sequenceWithLength:10];
    STAssertTrue([[generatedSequence objectAtIndex:0] intValue] == 1 , @"First element is 1");
}

- (void)testSecondElementIsOne
{
    NSArray* generatedSequence = [generator sequenceWithLength:10];
    STAssertTrue([[generatedSequence objectAtIndex:1] intValue] == 1 , @"Second element is 1");
}

- (void)testFifthElementIsFive
{
    NSArray* generatedSequence = [generator sequenceWithLength:5];
    STAssertEquals([[generatedSequence objectAtIndex:4] intValue], 5, @"Fifth element is 5");
}

- (void)testWhenZeroElementsRequestedThenGeneratedSequenceHasZeroElements
{
    NSArray* generatedSequence = [generator sequenceWithLength:0];
    STAssertTrue([generatedSequence count] == 0, nil);
}

- (void)testWhenOneElementsRequestedThenGeneratedSequenceHasOneElements
{
    NSArray* generatedSequence = [generator sequenceWithLength:1];
    STAssertTrue([generatedSequence count] == 1, nil);
}


- (void)testWhenTenElementsRequestedThenGeneratedSequenceHasTenElements
{
    NSArray* generatedSequence = [generator sequenceWithLength:10];
    STAssertTrue([generatedSequence count] == 10, nil);
}


@end
