//
//  SimpleIterator.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SimpleIterator.h"


@implementation SimpleIterator

int accumulator;

- (void) incrementByCount:(int)numberOfIncrements
{
    for (int i=0; i < numberOfIncrements; i++)
    {
        accumulator++;
    }
}

- (int) getAccumulator
{
    return accumulator;
}


@end
