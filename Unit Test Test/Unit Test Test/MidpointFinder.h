//
//  MidpointFinder.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef Unit_Test_Test_MidpointFinder_h
#define Unit_Test_Test_MidpointFinder_h

#import <list>

using std::list;

class MidpointFinder
{
public:
    int midpointOf(list<int> const& list);
    
    static const int NO_VALID_MIDPOINT;
};

#endif
