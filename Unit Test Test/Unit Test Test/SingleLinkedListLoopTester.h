//
//  SingleLinkedListLoopTester.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 15/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef Unit_Test_Test_SingleLinkedListLoopTester_h
#define Unit_Test_Test_SingleLinkedListLoopTester_h

#include "SingleLinkedList.h"

class SingleLinkedListLoopTester
{
public:
    template <class ElementType>
    bool isLooped(SingleLinkedList<ElementType>& list)
    {
        if (list.isEndOfList())
            return false;
        
        SingleLinkedList<ElementType>* pNextSingleStepElement = &list;
        SingleLinkedList<ElementType>* pNextTwoStepElement = &list.nextElement();
        
        while (!pNextTwoStepElement->isEndOfList())
        {
            if (pNextTwoStepElement == pNextSingleStepElement)
                return true;
            
            pNextSingleStepElement = &pNextSingleStepElement->nextElement();
            pNextTwoStepElement = &pNextTwoStepElement->nextElement();
            
            if (pNextTwoStepElement->isEndOfList())
                break;
            
            pNextTwoStepElement = &pNextTwoStepElement->nextElement();
        }
        
        return false;
    }
};

#endif
