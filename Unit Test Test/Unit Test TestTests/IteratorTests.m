//
//  IteratorTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "IteratorTests.h"

#import "Iterator.h"
#import "IteratorBuilders.h"

@implementation IteratorTests

- (SimpleIterator*) constructSimpleIterator
{
    return [[SimpleIterator alloc] init];
}

- (DuffsDeviceIterator*) constructDuffsDeviceIterator
{
    return [[DuffsDeviceIterator alloc] init];
}

- (void)assertAccumulatorIsZero:(id<Iterator>)iterator
{
    STAssertEquals([iterator getAccumulator], 0, nil);
}

- (void) assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:(id<Iterator>)iterator forN:(int)n
{
    [iterator incrementByCount:n];
    STAssertEquals([iterator getAccumulator], n, @"when %d iterations are performed on a %@", n, [[iterator class] description]);    
}

- (void) runTestsBuildingIteratorWith:(id<IteratorBuilder>)builder
{
    [self assertAccumulatorIsZero:[builder build]];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:0];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:1];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:2];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:7];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:8];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:9];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:64];
    [self assertWhenNIterationsArePerformed_thenAccumulatorIsNWithIterator:[builder build] forN:12345];
}

- (void)testSimpleIterator
{
    [self runTestsBuildingIteratorWith:[[SimpleIteratorBuilder alloc] init]];
}

- (void)testDuffsDeviceIterator
{
    [self runTestsBuildingIteratorWith:[[DuffsDeviceIteratorBuilder alloc] init]];
}

@end
