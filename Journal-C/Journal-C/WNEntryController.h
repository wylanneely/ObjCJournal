//
//  WNEntryController.h
//  Journal-C
//
//  Created by ALIA M NEELY on 5/22/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WNEntry.h"

@interface WNEntryController : NSObject

@property (nonatomic, strong, readonly) NSArray *entries;

-(void)addEntries:(WNEntry *)entry;
-(void)removeEntries:(WNEntry *)entry;

+ (WNEntryController *)sharedInstance;

@end
