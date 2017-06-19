//
//  WNJornalDetailViewController.m
//  Journal-C
//
//  Created by ALIA M NEELY on 6/19/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import "WNJornalDetailViewController.h"

@interface WNJornalDetailViewController ()



@end

@implementation WNJornalDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)clearButtonTapped:(UIButton *)sender {
    
    self.nameTextField.text = @"";
    self.journalTextView.text = @"";
    
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
    if (_entry != nil) {
        
        WNEntry *entry = [[WNEntry alloc]initWithTitle:self.nameTextField.text bodyText:self.journalTextView.text];
        [[WNEntryController sharedInstance] addEntries: entry];
        [self.navigationController popViewControllerAnimated:true];
    } else {
        [[WNEntryController sharedInstance] removeEntries:_entry];
        WNEntry *entry = [[WNEntry alloc]initWithTitle:self.nameTextField.text bodyText:self.journalTextView.text];
        [[WNEntryController sharedInstance] addEntries: entry];
        [self.navigationController popViewControllerAnimated:true];
    }
    
}



@end
