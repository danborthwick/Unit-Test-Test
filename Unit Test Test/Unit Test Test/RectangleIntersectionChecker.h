//
//  RectangleIntersectionChecker.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

@interface RectangleIntersectionChecker : NSObject

- (Boolean)checkIntersectionOf:(Rectangle*)rectangleA with:(Rectangle*)rectangleB;

@end
