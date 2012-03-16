//
//  SingleLinkedListReverser.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef Unit_Test_Test_SingleLinkedListReverser_h
#define Unit_Test_Test_SingleLinkedListReverser_h

#include "SingleLinkedList.h"

class SingleLinkedListReverser
{
public:
    template <class ElementType>
    SingleLinkedList<ElementType>& reverse(SingleLinkedList<ElementType>& list) 
    {
        SingleLinkedList<ElementType>* pFirstElement = &list;
        SingleLinkedList<ElementType>* pFirstNonReversedElement = &list;
        
        while (!pFirstNonReversedElement->isEndOfList())
        {
            SingleLinkedList<ElementType>* pElementToMoveToStart = &pFirstNonReversedElement->nextElement();
            pFirstNonReversedElement->appendWith(pElementToMoveToStart->nextElement());
            pElementToMoveToStart->appendWith(*pFirstElement);
            pFirstElement = pElementToMoveToStart;
        }
        
        return *pFirstElement;
    }
};

#endif
