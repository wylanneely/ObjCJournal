//
//  WNEntry.h
//  Journal-C
//
//  Created by ALIA M NEELY on 5/22/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WNEntry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *bodyText;
@property (nonatomic, copy) NSDate *timestamp;

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText andTimeStamp:(NSDate *)timeStamp;

@end
