//
//  ABI34_0_0RNBranchProperty.m
//  ABI34_0_0RNBranch
//
//  Created by Jimmy Dee on 1/26/17.
//  Copyright © 2017 Branch Metrics. All rights reserved.
//

#import "ABI34_0_0RNBranchProperty.h"
#import "ABI34_0_0BranchUniversalObject+RNBranch.h"

#import <ReactABI34_0_0/ABI34_0_0RCTLog.h>

@implementation ABI34_0_0RNBranchProperty

+ (instancetype)propertyWithSetterSelector:(SEL)selector type:(Class)type
{
    return [[self alloc] initWithSetterSelector:selector type:type];
}

- (instancetype)initWithSetterSelector:(SEL)selector type:(Class)type
{
    self = [super init];
    if (self) {
        _setterSelector = selector;
        _type = type;
    }
    return self;
}

- (instancetype)init
{
    @throw nil;
}

- (BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:self.class]) return NO;

    ABI34_0_0RNBranchProperty *other = object;
    return self.setterSelector == other.setterSelector && self.type == other.type;
}

@end
