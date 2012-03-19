//
//  QuickSorterTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QuickSorterTests.h"

#include "QuickSorter.h"

IntArray& arrayFromLiteral(int* literalArray, long length);

@implementation QuickSorterTests

- (void)setUp
{
    [super setUp];
    sorter = new QuickSorter;
}

- (void)tearDown
{
    delete sorter;
    sorter = NULL;
    [super tearDown];
}

- (void) assertThat:(IntArray&)array hasLength:(uint)length andValues:(int*)expectedValues
{
    STAssertTrue(array.size() == length, @"Expected length to be %d but was %d", length, array.size());
    
    for (int i=0; i<array.size(); i++) {
        STAssertEquals(array[i], expectedValues[i], @"Expected array[%d] to be %d, but it was %d", i, expectedValues[i], array[i]);
    }
}

- (void)testGivenEmptyArray_thenEmptyListIsReturned
{
    IntArray array = *new IntArray(0);
    sorter->sortInPlace(array);
    STAssertTrue(array.size() == 0, nil);
}

- (void)testGivenSingleElementArray_thenSortedArrayIsTheSame
{
    int sortedArray[] = { 5 };
    IntArray array = arrayFromLiteral(sortedArray, 1);
    sorter->sortInPlace(array);
    
    [self assertThat:array hasLength:1 andValues:sortedArray];
}

- (void)testGivenSortedInputArray_thenSortedArrayIsSorted
{
    int sortedArray[] = { 5, 10, 15, 20 };
    IntArray array = arrayFromLiteral(sortedArray, 4);
    sorter->sortInPlace(array);
    
    [self assertThat:array hasLength:4 andValues:sortedArray];
}

- (void)testGivenShortUnsortedInputArray_thenSortedArrayIsSorted
{
    int unsortedArray[] = { 4, 2, 3, 1 };
    int sortedArray[] = { 1, 2, 3, 4 };
    
    IntArray array = arrayFromLiteral(unsortedArray, 4);
    sorter->sortInPlace(array);
    
    [self assertThat:array hasLength:4 andValues:sortedArray];
}

- (void)testGivenLongUnsortedInputArray_thenSortedArrayIsSorted
{
    int unsortedArray[] = { 5, 3, 8, 90, 3, 1, 4, 2, 2, -9, 0, 0, 90, 91 };
    int sortedArray[] =   { -9, 0, 0, 1, 2, 2, 3, 3, 4, 5, 8, 90, 90, 91 };
    
    IntArray array = arrayFromLiteral(unsortedArray, 14);
    sorter->sortInPlace(array);
    
    [self assertThat:array hasLength:14 andValues:sortedArray];
}

@end
                                   
IntArray& arrayFromLiteral(int* literalArray, long length)
{
    return *new IntArray(literalArray, literalArray + length);
}
