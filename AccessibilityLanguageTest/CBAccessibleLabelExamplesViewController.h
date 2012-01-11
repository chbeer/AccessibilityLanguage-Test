//
//  CBAccessibleLabelExamplesViewController.h
//  AccessibilityLanguageTest
//
//  Created by Christian Beer on 11.01.12.
//  Copyright (c) 2012 Christian Beer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBAccessibleLabelExamplesViewController : UITableViewController

@end


@interface CBAccessibleLabelExample : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *languageCode;

+ (id) exampleWithText:(NSString*)text languageCode:(NSString*)languageCode;


@end