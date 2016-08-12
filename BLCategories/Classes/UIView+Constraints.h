//
//  UIView+Constraints.h
//  DemoBLUtilities
//
//  Created by Binh Le on 8/9/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Constraints)

/*!
 * @brief Set width for the view
 * @param value Length of width
 * @return Return a NSLayoutConstraint
 */
- (NSLayoutConstraint *)blConstraintForWidth:(CGFloat)value;

/*!
 * @brief Set height for the view
 * @param value Length of height
 * @return Return a NSLayoutConstraint
 */
- (NSLayoutConstraint *)blConstraintForHeight:(CGFloat)value;

/*!
 * @brief Center the view in Horizontal Axis
 * @param parentView Container view
 */
- (void)blConstraintToCenterXInParent:(UIView *)parentView;

/*!
 * @brief Center the view in Vertical Axis
 * @param parentView Container view
 */
- (void)blConstraintToCenterYInParent:(UIView *)parentView;

/*!
 * @brief Align view toward left side with specific offset
 * @param parentView Container view
 * @param offset Value of margin
 */
- (void)blConstraintToAlignLeftInParent:(UIView *)parentView withOffset:(CGFloat)offset;

/*!
 * @brief Align view toward right side with specific offset
 * @param parentView Container view
 * @param offset Value of margin
 */
- (void)blConstraintToAlignRightInParent:(UIView *)parentView withOffset:(CGFloat)offset;

/*!
 * @brief Align view toward top side with specific offset
 * @param parentView Container view
 * @param offset Value of margin
 */
- (void)blConstraintToAlignTopInParent:(UIView *)parentView withOffset:(CGFloat)offset;

/*!
 * @brief Align view toward bottom side with specific offset
 * @param parentView Container view
 * @param offset Value of margin
 */
- (void)blConstraintToAlignBottomInParent:(UIView *)parentView withOffset:(CGFloat)offset;

/*!
 * @brief Calculate ratio between two views for WIDTH
 * @param parentView Parent View
 * @param ratio Expect ratio (0 -> 1)
 */
- (void)blConstraintForWidthInParent:(UIView *)parentView withRatio:(CGFloat)ratio;

/*!
 * @brief Calculate ratio between two views for HEIGHT
 * @param parentView Container view
 * @param ratio This value is CGFloat type, its range: 0.0 -> 1.0
 */
- (void)blConstraintForHeightInParent:(UIView *)parentView withRatio:(CGFloat)ratio;

@end
