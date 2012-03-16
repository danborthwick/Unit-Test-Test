//
//  CPPFibonacciGenerator.cpp
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "CppIntArrayFibonacciGenerator.h"

int* CppIntArrayFibonacciGenerator::generateSequenceWithLength(int length)
{
    int* sequence = NULL;
    
    if (length >= 1) {
        sequence = (int*) malloc(length * sizeof(int));
        sequence[0] = 1;
    }
    
    if (length >= 2) {
        sequence[1] = 1;
    }
    
    for (int i=2; i < length; i++) {
        sequence[i] = sequence[i-2] + sequence[i-1];
    }
    
    return sequence;
}
