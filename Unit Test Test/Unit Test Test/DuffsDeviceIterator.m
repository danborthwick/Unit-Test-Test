//
//  DuffsDeviceIterator.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DuffsDeviceIterator.h"

@implementation DuffsDeviceIterator

- (void) incrementByCount:(int)numberOfIncrements
{
    if (numberOfIncrements <=0)
        return;
    
    int numberOfLoops = (numberOfIncrements + 7) / 8;
    switch (numberOfIncrements % 8) {
            do {
            case 0: accumulator++;
            case 7: accumulator++;
            case 6: accumulator++;
            case 5: accumulator++;
            case 4: accumulator++;
            case 3: accumulator++;
            case 2: accumulator++;
            case 1: accumulator++;
            }
            while (--numberOfLoops > 0);
    }
}

- (int) getAccumulator
{
    return accumulator;
}

@end
