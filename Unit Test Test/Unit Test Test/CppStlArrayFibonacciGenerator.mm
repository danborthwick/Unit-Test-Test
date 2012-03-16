//
//  STLFibonacciGenerator.cpp
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "CppStlArrayFibonacciGenerator.h"

using std::vector;

vector<int>& CppStlArrayFibonacciGenerator::generateSequenceWithLength(int length)
{
    vector<int>& sequence = *(new std::vector<int>(length));

    if (length >= 1) {
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
