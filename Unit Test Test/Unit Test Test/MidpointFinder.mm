//
//  MidpointFinder.cpp
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "MidpointFinder.h"


using namespace std;

const int MidpointFinder::NO_VALID_MIDPOINT = -1;

int MidpointFinder::midpointOf(list<int> const& listToSearch)
{
    list<int>::const_iterator endOfSearchedRange = listToSearch.begin();
    
    if (listToSearch.empty() || (endOfSearchedRange == listToSearch.end())) {
        return NO_VALID_MIDPOINT;
    }
        
    endOfSearchedRange++;
    list<int>::const_iterator midpointOfSearchedRange = listToSearch.begin();
    bool lengthOfSearchedRangeIsEven = false;

    for ( ; endOfSearchedRange != listToSearch.end(); endOfSearchedRange++)
    {
        if (lengthOfSearchedRangeIsEven) {
            midpointOfSearchedRange++;
        }
        
        lengthOfSearchedRangeIsEven = !lengthOfSearchedRangeIsEven;
    }
    
    return *midpointOfSearchedRange;
}