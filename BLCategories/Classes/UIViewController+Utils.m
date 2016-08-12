//
//  UIViewController+Utils.m
//  DemoBLUtilities
//
//  Created by Binh Le on 8/10/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import "UIViewController+Utils.h"

@implementation UIViewController (Utils)


- (void)createActionViewWithType:(UIAlertControllerStyle)actionType title:(NSString *)title message:(NSString *)message actions:(NSArray *)actions {
    
    if (!actions) {
        return;
    }
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                             message:message
                                                                      preferredStyle:actionType];
    
    for (UIAlertAction *action in actions) {
        [alertController addAction:action];
    }
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)blShowAlertWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray *)actions {
    
    [self createActionViewWithType:UIAlertControllerStyleAlert title:title message:message actions:actions];
    
}

- (void)blShowActionSheetWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray *)actions {
    
    [self createActionViewWithType:UIAlertControllerStyleActionSheet title:title message:message actions:actions];
    
}

@end
