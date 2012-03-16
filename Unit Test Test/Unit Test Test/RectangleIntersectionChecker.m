//
//  RectangleIntersectionChecker.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleIntersectionChecker.h"

@implementation RectangleIntersectionChecker

- (Boolean)checkIntersectionOf:(Rectangle*)rectangleA with:(Rectangle*)rectangleB
{
    if (   (rectangleA.left > rectangleB.right)
        || (rectangleA.right < rectangleB.left)
        || (rectangleA.top > rectangleB.bottom)
        || (rectangleA.bottom < rectangleB.top))
    {
        return false;
    }
    
    return true;
}

@end
