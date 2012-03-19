//
//  SecondHighestElementFinder.cpp
//  Unit Test Test
//
//  Created by Dan Borthwick on 16/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "SecondHighestElementFinder.h"

void throwException();
void throwExceptionIfLessThanTwoElements(const std::vector<int> &array);

int SecondHighestElementFinder::findSecondHighestElementIn(const vector<int> &array)
{
    throwExceptionIfLessThanTwoElements(array);
    
    int highestValueFoundSoFar = INT32_MIN;
    int secondHighestValueFoundSoFar = INT32_MIN;
    
    for (std::vector<int>::const_iterator iterator = array.begin(); iterator != array.end(); iterator++)
    {
        if (*iterator > secondHighestValueFoundSoFar)
        {
            if (*iterator > highestValueFoundSoFar) {
                secondHighestValueFoundSoFar = highestValueFoundSoFar;
                highestValueFoundSoFar = *iterator;
            }
            else
            {
                secondHighestValueFoundSoFar = *iterator;
            }
        }
    }
    
    if (secondHighestValueFoundSoFar == highestValueFoundSoFar)
    {
        throwException();
    }
    
    return secondHighestValueFoundSoFar;
}

void throwException()
{
    SecondHighestElementFinderException exception;
    throw exception;
}

void throwExceptionIfLessThanTwoElements(const std::vector<int> &array)
{
    if (array.size() <= 1) {
        throwException();
    }
}

