//
//  CharListBuilder.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 15/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "LinkedListTypes.h"

@interface CharListBuilder : NSObject

+ (CharSingleLinkedList&) listFromString:(const char*)string;

@end
