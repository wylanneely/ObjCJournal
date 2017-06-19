//
//  WNEntry.m
//  Journal-C
//
//  Created by ALIA M NEELY on 5/22/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import "WNEntry.h"

@implementation WNEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [NSDate new];
        
    }
    return self;
}



@end
