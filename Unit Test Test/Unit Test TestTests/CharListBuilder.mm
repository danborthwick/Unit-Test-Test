//
//  CharListBuilder.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 15/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CharListBuilder.h"

@implementation CharListBuilder

+ (CharSingleLinkedList&) listFromString:(const char*)string;
{
    CharSingleLinkedList& list = *new CharSingleLinkedList(*string);
    CharSingleLinkedList* pNextElement = &list;
    for (string++; *string != '\0'; string++)
    {
        pNextElement->appendWith(*new CharSingleLinkedList(*string));
        pNextElement = &pNextElement->nextElement();
    }
    
    return list;
}

@end
