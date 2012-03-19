//
//  QuickSorter.cpp
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "QuickSorter.h"

void quicksort(IntArray& array, int leftIndex, int rightIndex);
int guessPivotIndex(IntArray& array, int leftIndex, int rightIndex);
int partition(IntArray& array, int leftIndex, int rightIndex, int pivotIndex);
void swapValues(IntArray& array, int indexA, int indexB);
int indexOfMedianValue(IntArray& array, int indexA, int indexB, int indexC);


IntArray& QuickSorter::sortInPlace(IntArray& array)
{
    quicksort(array, 0, array.size()-1);
    return array;
}

void quicksort(IntArray& array, int leftIndex, int rightIndex)
{
    if (leftIndex < rightIndex)
    {
        int pivotIndex = guessPivotIndex(array, leftIndex, rightIndex);
        pivotIndex = partition(array, leftIndex, rightIndex, pivotIndex);
        quicksort(array, leftIndex, pivotIndex-1);
        quicksort(array, pivotIndex+1, rightIndex);
    }
}

int partition(IntArray& array, int leftIndex, int rightIndex, int pivotIndex)
{
    int pivotValue = array[pivotIndex];
    int firstUnsortedIndex = leftIndex;

    // Move pivot to end
    swapValues(array, pivotIndex, rightIndex);
    
    // Move values less than pivot to left
    for (int candidateIndex=leftIndex; candidateIndex < rightIndex; candidateIndex++)
    {
        if (array[candidateIndex] < pivotValue)
        {
            swapValues(array, firstUnsortedIndex, candidateIndex);
            firstUnsortedIndex++;
        }
    }
    
    // Move pivot to end of left list
    swapValues(array, firstUnsortedIndex, rightIndex);
    
    return firstUnsortedIndex;
}

int guessPivotIndex(IntArray& array, int leftIndex, int rightIndex)
{
    int middleIndex = (leftIndex + rightIndex) / 2;
    return indexOfMedianValue(array, leftIndex, middleIndex, rightIndex);
}

int indexOfMedianValue(IntArray& array, int indexA, int indexB, int indexC)
{
    int valueA = array[indexA];
    int valueB = array[indexB];
    int valueC = array[indexC];
    
    if (valueA < valueB)
    {
        if (valueA > valueC)
            return indexA;
        else if (valueB < valueC)
            return indexB;
        else
            return indexC;
    }
    else
    {
        if (valueA < valueC)
            return indexA;
        else if (valueB < valueC)
            return indexB;
        else
            return indexC;
    }
}


void swapValues(IntArray& array, int indexA, int indexB)
{
    int valueABeforeSwap = array[indexA];
    array[indexA] = array[indexB];
    array[indexB] = valueABeforeSwap;
}
