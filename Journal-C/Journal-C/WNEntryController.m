//
//  WNEntryController.m
//  Journal-C
//
//  Created by ALIA M NEELY on 5/22/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import "WNEntryController.h"

static NSString * const EntriesKey = @"entries";


@interface WNEntryController ()

@property (nonatomic, strong) NSMutableArray *internalEntries;

@end

@implementation WNEntryController

+ (WNEntryController *)sharedInstance {
    static WNEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [WNEntryController new];
    });
    return sharedInstance;
}

- (NSArray *)entries { return self.internalEntries; }


- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalEntries = [NSMutableArray array];
    }
    return self;
}


-(void)addEntries:(WNEntry *)entry
{
    [self.internalEntries addObject:entry];
    
}

-(void)removeEntries:(WNEntry *)entry
{
    [self.internalEntries removeObject:entry];
}

@end
