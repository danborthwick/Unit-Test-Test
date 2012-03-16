//
//  Rectangle.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

+ (Rectangle*) rectangleWithLeft:(int)left withTop:(int)top withRight:(int)right withBottom:(int)bottom;

@property float left;
@property float top;
@property float right;
@property float bottom;

@end
