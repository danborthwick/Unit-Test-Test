//
//  SingleLinkedListLoopTesterTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 15/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SingleLinkedListLoopTesterTests.h"

#import "CharListBuilder.h"

#include "LinkedListTypes.h"
#include "SingleLinkedListLoopTester.h"

@implementation SingleLinkedListLoopTesterTests

- (void)setUp
{
    [super setUp];
    pLoopTester = new SingleLinkedListLoopTester();
}

- (void)tearDown
{
    delete pLoopTester;
    pLoopTester = NULL;
    [super tearDown];
}

- (void)testGivenSingleElementList_thenNoLoopIsFound
{
    CharSingleLinkedList& singleElementList = [CharListBuilder listFromString:"a"];
    STAssertFalse(pLoopTester->isLooped(singleElementList), nil);
}

- (void)testGivenTwoElementLine_thenNoLoopIsFound
{
    CharSingleLinkedList& twoElementsNoLoops = [CharListBuilder listFromString:"ab"];
    STAssertFalse(pLoopTester->isLooped(twoElementsNoLoops), nil);    
}

- (void)testGivenLongLine_thenNoLoopIsFound
{
    CharSingleLinkedList& twoElementsNoLoops = [CharListBuilder listFromString:"abcdefghij"];
    STAssertFalse(pLoopTester->isLooped(twoElementsNoLoops), nil);    
}

- (void)testGivenSingleElementLoop_thenLoopIsFound
{
    CharSingleLinkedList& singleElementLoop = *new CharSingleLinkedList('a');
    singleElementLoop.appendWith(singleElementLoop);
    STAssertTrue(pLoopTester->isLooped(singleElementLoop), nil);    
}

- (void)testGivenTwoElementLoop_thenLoopIsFound
{
    CharSingleLinkedList& twoElementLoop = *new CharSingleLinkedList('a');
    twoElementLoop.appendWith(*new CharSingleLinkedList('b'));
    twoElementLoop.nextElement().appendWith(twoElementLoop);
    STAssertTrue(pLoopTester->isLooped(twoElementLoop), nil);    
}

- (void)testGivenThreeElementSimpleLoop_thenLoopIsFound
{
    CharSingleLinkedList& loop = *new CharSingleLinkedList('a');
    loop.appendWith(*new CharSingleLinkedList('b'));
    loop.nextElement().appendWith(*new CharSingleLinkedList('c'));
    loop.nextElement().nextElement().appendWith(loop);
    STAssertTrue(pLoopTester->isLooped(loop), nil);    
}

- (void)testGivenLongSimpleLoop_thenLoopIsFound
{
    CharSingleLinkedList& loop = [CharListBuilder listFromString:"abcdefg"];
    loop.lastElement().appendWith(loop);
    STAssertTrue(pLoopTester->isLooped(loop), nil);    
}

- (void)testGivenThreeElementBranchedLoop_thenLoopIsFound
{
    CharSingleLinkedList& loop = *new CharSingleLinkedList('a');
    loop.appendWith(*new CharSingleLinkedList('b'));
    loop.nextElement().appendWith(*new CharSingleLinkedList('c'));
    loop.nextElement().nextElement().appendWith(loop.nextElement());
    STAssertTrue(pLoopTester->isLooped(loop), nil);    
}

- (void)testGivenLongLoop_whenLastElementIsLoop_thenLoopIsFound
{
    CharSingleLinkedList& loop = [CharListBuilder listFromString:"abcdefgh"];
    loop.lastElement().appendWith(loop.lastElement());
    STAssertTrue(pLoopTester->isLooped(loop), nil);    
}

- (void)testGivenLongBranchedLoop_thenLoopIsFound
{
    CharSingleLinkedList& list = [CharListBuilder listFromString:"abcdef"];
    CharSingleLinkedList& loopedBranch = [CharListBuilder listFromString:"ghijk"];
    loopedBranch.lastElement().appendWith(loopedBranch);
    list.lastElement().appendWith(loopedBranch);
    STAssertTrue(pLoopTester->isLooped(list), nil);    
}
@end
