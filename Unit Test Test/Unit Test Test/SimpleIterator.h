//
//  SimpleIterator.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Iterator.h"

@interface SimpleIterator : NSObject <Iterator> {

@private
int accumulator;

}

@end
