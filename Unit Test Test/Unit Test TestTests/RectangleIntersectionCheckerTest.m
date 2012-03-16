//
//  RectangleIntersectionCheckerTest.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 05/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleIntersectionCheckerTest.h"

#import "Rectangle.h"
#import "RectangleIntersectionChecker.h"

@implementation RectangleIntersectionCheckerTest

RectangleIntersectionChecker* intersectionChecker;

- (void) setUp
{
    [super setUp];
    intersectionChecker = [RectangleIntersectionChecker new];
}

- (void)testWhenAIsToTheLeftOfBThenFalse
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:5 withTop:5 withRight:10 withBottom:10];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:15 withTop:5 withRight:20 withBottom:10];
    STAssertFalse([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);
}

- (void)testWhenAIsToTheRightOfBThenFalse
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:15 withTop:5 withRight:20 withBottom:10];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:5 withTop:5 withRight:10 withBottom:10];
    STAssertFalse([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);
}

- (void)testWhenAIsAboveBThenFalse
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:5 withTop:5 withRight:10 withBottom:10];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:5 withTop:15 withRight:10 withBottom:20];
    STAssertFalse([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);
}

- (void)testWhenAIsBelowBThenFalse
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:5 withTop:15 withRight:10 withBottom:20];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:5 withTop:5 withRight:10 withBottom:10];
    STAssertFalse([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);
}

- (void) testWhenAIsWithinBThenTrue
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:10 withTop:10 withRight:15 withBottom:15];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:5 withTop:5 withRight:20 withBottom:20];
    STAssertTrue([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);
}

- (void) testWhenBIsWithinAThenTrue
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:5 withTop:5 withRight:20 withBottom:20];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:10 withTop:10 withRight:15 withBottom:15];
    STAssertTrue([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);
}

- (void) testWhenAIsTheSameAsBThenTrue
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:5 withTop:5 withRight:20 withBottom:20];
    STAssertTrue([intersectionChecker checkIntersectionOf:rectangleA with:rectangleA], nil);
}

- (void) testWhenACrossesBThenTrue
{
    Rectangle* rectangleA = [Rectangle rectangleWithLeft:10 withTop:5 withRight:15 withBottom:20];
    Rectangle* rectangleB = [Rectangle rectangleWithLeft:5 withTop:10 withRight:20 withBottom:15];
    STAssertTrue([intersectionChecker checkIntersectionOf:rectangleA with:rectangleB], nil);   
}




@end
