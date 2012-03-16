//
//  Rectangle.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize left;
@synthesize top;
@synthesize right;
@synthesize bottom;


- (id) initWithLeft:(int)aLeft withTop:(int)aTop withRight:(int)aRight withBottom:(int)aBottom
{
    self.left = aLeft;
    self.top = aTop;
    self.right = aRight;
    self.bottom = aBottom;
    
    return [super init];
}

+ (Rectangle*) rectangleWithLeft:(int)left withTop:(int)top withRight:(int)right withBottom:(int)bottom
{
    return [[Rectangle alloc] initWithLeft:left withTop:top withRight:right withBottom:bottom];
}


@end
