//
//  BinaryTree.h
//  Unit Test Test
//
//  Created by Dan Borthwick on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTree : NSObject

- (int) depth;
- (NSString*) stringFromInorderTraversal;

+ (BinaryTree*) nodeWithValue:(NSString*)value;

@property (nonatomic, retain) BinaryTree* leftBranch;
@property (nonatomic, retain) BinaryTree* rightBranch;
@property (nonatomic, copy) NSString* value;
@end
