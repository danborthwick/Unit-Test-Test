//
//  FibonacciGenerator.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FibonacciGenerator.h"

@implementation FibonacciGenerator

- (NSArray*) sequenceWithLength:(int)length
{
    NSMutableArray* sequence = [NSMutableArray arrayWithCapacity:length];
    
    for (int i=0; i < MIN(length, 2); i++)
    {
        [sequence addObject:[NSNumber numberWithInt:1]];
    }
    for (int i=2; i < length; i++)
    {
        int nextValue = [[sequence objectAtIndex:i-2] intValue] + [[sequence objectAtIndex:i-1] intValue];
        [sequence addObject:[NSNumber numberWithInt:nextValue]];
    }
         
    return sequence;
}

@end
