//
//  SingleLinkedList.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 14/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef Unit_Test_Test_SingleLinkedList_h
#define Unit_Test_Test_SingleLinkedList_h

template<class ValueType>
class SingleLinkedList
{
private:
    SingleLinkedList* mpNextElement;
    ValueType mValue;
    
public:
    SingleLinkedList(ValueType value) :
    mpNextElement(NULL),
    mValue(value)
    {
    }
    
    ValueType value() const
    {
        return mValue;
    }
    
    bool isEndOfList() const
    {
        return (mpNextElement == NULL);
    }
    
    SingleLinkedList<ValueType>& nextElement() const
    {
        return *mpNextElement;
    }

    void appendWith(SingleLinkedList& element)
    {
        mpNextElement = &element;
    }
    
    void removeSucceedingElements()
    {
        mpNextElement = NULL;
    }
    
    SingleLinkedList<ValueType>& lastElement()
    {
        SingleLinkedList<ValueType>* pLastElement;
        
        for (pLastElement = this;
             !pLastElement->isEndOfList();
             pLastElement = &pLastElement->nextElement())
        {
        }
        
        return *pLastElement;
    }
};

#endif
