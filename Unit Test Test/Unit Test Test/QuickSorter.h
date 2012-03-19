//
//  QuickSorter.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef Unit_Test_Test_QuickSorter_h
#define Unit_Test_Test_QuickSorter_h

#import <vector>

typedef std::vector<int> IntArray;

class QuickSorter
{
public:
    IntArray& sortInPlace(IntArray& array);
};

#endif
