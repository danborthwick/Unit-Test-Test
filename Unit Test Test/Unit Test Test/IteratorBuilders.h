//
//  IteratorBuilders.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Iterator.h"
#import "SimpleIterator.h"
#import "DuffsDeviceIterator.h"

@protocol IteratorBuilder <NSObject>

- (id<Iterator>) build;

@end

@interface SimpleIteratorBuilder : NSObject<IteratorBuilder>
@end

@implementation SimpleIteratorBuilder
- (id<Iterator>) build
{
    return [[SimpleIterator alloc] init];
}
@end

@interface DuffsDeviceIteratorBuilder : NSObject<IteratorBuilder>
@end

@implementation DuffsDeviceIteratorBuilder
- (id<Iterator>) build
{
    return [[DuffsDeviceIterator alloc] init];
}
@end
