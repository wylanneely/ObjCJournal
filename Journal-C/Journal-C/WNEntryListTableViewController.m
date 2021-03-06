//
//  WNEntryListTableViewController.m
//  Journal-C
//
//  Created by ALIA M NEELY on 5/22/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

#import "WNEntryListTableViewController.h"
#import "WNEntryController.h"
#import "WNJornalDetailViewController.h"

@interface WNEntryListTableViewController ()

@end

@implementation WNEntryListTableViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[WNEntryController sharedInstance] entries] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    WNEntryController *entryControler = [WNEntryController sharedInstance];
    WNEntry *entry = entryControler.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}







#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"toExistingCell"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        WNEntry *entry = [[WNEntryController sharedInstance]entries][indexPath.row];
        
        WNJornalDetailViewController *vc = (WNJornalDetailViewController *)segue.destinationViewController;
        
        vc.entry = entry;
        vc.indexOfEntry = indexPath;
        vc.nameTextField.text = entry.title;
        vc.journalTextView.text = entry.bodyText;
        
    }
    
    
    
}


@end
