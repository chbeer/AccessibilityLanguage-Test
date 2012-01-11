//
//  CBAccessibleLabelExamplesViewController.m
//  AccessibilityLanguageTest
//
//  Created by Christian Beer on 11.01.12.
//  Copyright (c) 2012 Christian Beer. All rights reserved.
//

#import "CBAccessibleLabelExamplesViewController.h"

@interface CBAccessibleLabelExamplesViewController ()
@property (nonatomic, retain) NSArray *rows;
@end

@implementation CBAccessibleLabelExamplesViewController

@synthesize rows = _rows;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.rows = [NSArray arrayWithObjects:
                 [CBAccessibleLabelExample exampleWithText:@"This is an english text." 
                                              languageCode:@"en"], 
                 [CBAccessibleLabelExample exampleWithText:@"Dies ist ein deutscher Text." 
                                              languageCode:@"de"], 
                 [CBAccessibleLabelExample exampleWithText:@"Questo è un testo in italiano." 
                                              languageCode:@"it"], 
                 [CBAccessibleLabelExample exampleWithText:@"Se trata de un texto español." 
                                              languageCode:@"es"], 
                 [CBAccessibleLabelExample exampleWithText:@"Ceci est un texte en français." 
                                              languageCode:@"fr"], 
                  nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.rows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
/* uncomment to add workaround to iOS bug
    if (!cell) {
        NSLog(@"!! iOS BUG!! This should not return nil because the Cell is defined in Storyboard! Happens when VoiceOver is on");
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
 */
    
    // Configure the cell...
    CBAccessibleLabelExample *example = [self.rows objectAtIndex:indexPath.row];
    
    cell.textLabel.text = example.text;
    cell.textLabel.accessibilityLanguage = example.languageCode;
    
    return cell;
}

@end


@implementation CBAccessibleLabelExample

@synthesize text = _text;
@synthesize languageCode = _languageCode;

+ (id) exampleWithText:(NSString*)text languageCode:(NSString*)languageCode
{
    CBAccessibleLabelExample* example = [[self alloc] init];
    example.text = text;
    example.languageCode = languageCode;
    return example;
}

@end