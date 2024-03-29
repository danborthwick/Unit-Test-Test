//
//  QuickSorterTests.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

//  Logic unit tests contain unit test code that is designed to be linked into an independent test executable.
//  See Also: http://developer.apple.com/iphone/library/documentation/Xcode/Conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

#import <SenTestingKit/SenTestingKit.h>

class QuickSorter;

@interface QuickSorterTests : SenTestCase
{
    QuickSorter* sorter;
}

@end
