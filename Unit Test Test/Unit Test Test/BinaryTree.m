//
//  BinaryTree.m
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BinaryTree.h"

@implementation BinaryTree

@synthesize leftBranch;
@synthesize rightBranch;
@synthesize value;

- (id) initWithValue:(NSString*)newValue
{
    self = [super init];
    if (self)
    {
        self.value = newValue;
    }
    return self;
}

- (void) setLeftBranch:(BinaryTree*)newLeftBranch
{
    leftBranch = newLeftBranch;
}

- (void) setRightBranch:(BinaryTree*)newRightBranch
{
    rightBranch = newRightBranch;
}

- (int) depth
{
    uint leftDepth = (leftBranch == nil) ? 0 : [leftBranch depth];
    uint rightDepth = (rightBranch == nil) ? 0 : [rightBranch depth];
    return MAX(leftDepth, rightDepth) + 1;
}

- (NSString*) stringFromInorderTraversal
{
    NSString* result;
    
    if (leftBranch == nil) {
        result = value;
    }
    else {
        result = [[leftBranch stringFromInorderTraversal] stringByAppendingFormat:@" %@", value];
    }
    
    if (rightBranch != nil) {
        result = [result stringByAppendingFormat:@" %@", [rightBranch stringFromInorderTraversal]]; 
    }
    
    return result;
}

+ (BinaryTree*) nodeWithValue:(NSString*)value
{
    return [[BinaryTree alloc] initWithValue:value];
}

@end
