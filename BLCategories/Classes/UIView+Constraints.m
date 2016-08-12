//
//  UIView+Constraints.m
//  DemoBLUtilities
//
//  Created by Binh Le on 8/9/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

- (NSLayoutConstraint *)blConstraintForWidth:(CGFloat)value {
    
    return [NSLayoutConstraint constraintWithItem:self
                                        attribute:NSLayoutAttributeWidth
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:nil
                                        attribute:NSLayoutAttributeNotAnAttribute
                                       multiplier:1
                                         constant:value];
    
}

- (NSLayoutConstraint *)blConstraintForHeight:(CGFloat)value {
    
    return [NSLayoutConstraint constraintWithItem:self
                                        attribute:NSLayoutAttributeHeight
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:nil
                                        attribute:NSLayoutAttributeNotAnAttribute
                                       multiplier:1
                                         constant:value];
    
}

- (void)blConstraintToCenterXInParent:(UIView *)parentView {
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.f constant:0.f];
    [parentView addConstraint:constraint];
    
}

- (void)blConstraintToCenterYInParent:(UIView *)parentView {
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:parentView
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.f constant:0.f];
    [parentView addConstraint:constraint];
    
}

- (void)blConstraintToAlignTopInParent:(UIView *)parentView withOffset:(CGFloat)offset {
    
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-offset-[view]"
                                                                   options:0
                                                                   metrics:@{ @"offset": [NSNumber numberWithFloat:offset] }
                                                                     views:@{ @"view": self }];
    [parentView addConstraints:constraints];
    
}

- (void)blConstraintToAlignBottomInParent:(UIView *)parentView withOffset:(CGFloat)offset {
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-offset-|"
                                                                   options:0
                                                                   metrics:@{ @"offset": [NSNumber numberWithFloat:offset] }
                                                                     views:@{ @"view": self }];
    [parentView addConstraints:constraints];
}

- (void)blConstraintToAlignLeftInParent:(UIView *)parentView withOffset:(CGFloat)offset {
    
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-offset-[view]"
                                                                   options:0
                                                                   metrics:@{ @"offset": [NSNumber numberWithFloat:offset] }
                                                                     views:@{ @"view": self }];
    [parentView addConstraints:constraints];
    
}

- (void)blConstraintToAlignRightInParent:(UIView *)parentView withOffset:(CGFloat)offset {
    
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-offset-|"
                                                                             options:0
                                                                             metrics:@{ @"offset": [NSNumber numberWithFloat:offset] }
                                                                               views:@{ @"view": self }];
    [parentView addConstraints:constraints];
    
}

- (void)blConstraintForWidthInParent:(UIView *)parentView withRatio:(CGFloat)ratio {
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:parentView
                                                                  attribute:NSLayoutAttributeWidth
                                                                 multiplier:ratio
                                                                   constant:0.0f];
    [parentView addConstraint:constraint];
    
}

- (void)blConstraintForHeightInParent:(UIView *)parentView withRatio:(CGFloat)ratio {
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:parentView
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier:ratio
                                                                   constant:0.0f];
    [parentView addConstraint:constraint];
    
}

@end
