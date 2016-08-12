//
//  UIViewController+Utils.h
//  DemoBLUtilities
//
//  Created by Binh Le on 8/10/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^actionBlock)();

@interface UIViewController (Utils)

/*!
 * @brief Show alert view with message and options
 * @param title Title of alert view
 * @param message Message of alert view
 * @param actions Actions array
 */
- (void)blShowAlertWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray *)actions;

/*!
 * @brief Show action sheet with message and options
 * @param title Title of alert view
 * @param message Message of alert view
 * @param actions Actions array
 */
- (void)blShowActionSheetWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray *)actions;

@end
