//
//  BinaryTreeDepthFinderTests.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BinaryTreeTests.h"

#import "BinaryTree.h"

@implementation BinaryTreeTests

- (void)testGivenALeadNode_thenDepthIsOne
{
    BinaryTree* leafNode = [BinaryTree nodeWithValue:@"a"];
    STAssertTrue([leafNode depth] == 1, nil);
}

- (void)testGivenRootWithTwoLeaves_thenDepthIsTwo
{
    BinaryTree* root = [BinaryTree nodeWithValue:nil];
    [root setLeftBranch:[BinaryTree nodeWithValue:nil]];
    [root setRightBranch:[BinaryTree nodeWithValue:nil]];

    STAssertTrue([root depth] == 2, nil);
}

- (void)testGivenLeftChain_thenDepthIsCorrect
{
    BinaryTree* root = [BinaryTree nodeWithValue:@"1"];
    root.leftBranch = [BinaryTree nodeWithValue:@"2"];
    root.leftBranch.leftBranch = [BinaryTree nodeWithValue:@"3"];
    root.leftBranch.leftBranch.leftBranch = [BinaryTree nodeWithValue:@"4"];
    root.leftBranch.leftBranch.leftBranch.leftBranch = [BinaryTree nodeWithValue:@"5"];
    
    STAssertEquals([root depth], 5, nil);
}

- (void)testGivenRightChain_thenDepthIsCorrect
{
    BinaryTree* root = [BinaryTree nodeWithValue:@"1"];
    root.rightBranch = [BinaryTree nodeWithValue:@"2"];
    root.rightBranch.rightBranch = [BinaryTree nodeWithValue:@"3"];
    root.rightBranch.rightBranch.rightBranch = [BinaryTree nodeWithValue:@"4"];
    root.rightBranch.rightBranch.rightBranch.rightBranch = [BinaryTree nodeWithValue:@"5"];
    
    STAssertEquals([root depth], 5, nil);
}

- (void)testGivenUnbalancedTree_thenDepthIsCorrect
{
    BinaryTree* root = [BinaryTree nodeWithValue:@"1"];
    root.leftBranch = [BinaryTree nodeWithValue:@"2"];
    root.rightBranch = [BinaryTree nodeWithValue:@"2"];
    
    root.leftBranch.rightBranch = [BinaryTree nodeWithValue:@"3"];
    root.rightBranch.rightBranch = [BinaryTree nodeWithValue:@"3"];
    root.rightBranch.rightBranch.rightBranch = [BinaryTree nodeWithValue:@"4"];
    
    STAssertEquals([root depth], 4, nil);
}

- (void)testGivenALeafNode_thenInorderTraversalReturnsValue
{
    BinaryTree* root = [BinaryTree nodeWithValue:@"root"];
    
    STAssertEquals([root stringFromInorderTraversal], @"root", nil);
}

- (void)testGivenARootWithTwoLeaves_thenInorderTraversalReturnsLeftThenRight
{
    BinaryTree* root = [BinaryTree nodeWithValue:@"root"];
    root.leftBranch = [BinaryTree nodeWithValue:@"left"];
    root.rightBranch = [BinaryTree nodeWithValue:@"right"];
    
    STAssertEqualObjects([root stringFromInorderTraversal], @"left root right", nil);
}

- (void)testGivenUnbalancedTree_thenInorderTraversalReturnsCorrectValue
{
    BinaryTree* root = [BinaryTree nodeWithValue:@"root"];
    
    root.leftBranch = [BinaryTree nodeWithValue:@"L"];
    root.rightBranch = [BinaryTree nodeWithValue:@"R"];

    root.leftBranch.leftBranch = [BinaryTree nodeWithValue:@"LL"];
    root.leftBranch.rightBranch = [BinaryTree nodeWithValue:@"LR"];
    
    root.rightBranch.leftBranch = [BinaryTree nodeWithValue:@"RL"];
    
    STAssertEqualObjects([root stringFromInorderTraversal], @"LL L LR root RL R", nil);
}

@end
