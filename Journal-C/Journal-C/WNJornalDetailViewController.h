//
//  WNJornalDetailViewController.h
//  Journal-C
//
//  Created by ALIA M NEELY on 6/19/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WNEntry.h"
#import "WNEntryController.h"

@interface WNJornalDetailViewController : UIViewController

@property (nonatomic, strong) WNEntry *entry;
@property (nonatomic) NSIndexPath *indexOfEntry;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *journalTextView;

@end
