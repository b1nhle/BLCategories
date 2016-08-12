//
//  UIDevice+Utils.h
//  DemoBLUtilities
//
//  Created by Binh Le on 8/10/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Utils)

/*!
 * @brief Check if device's version is equal with a specific version
 * @param versionNumber A specific version (ex: 9.1, 9.3.3,...)
 * @return Return YES if device's version is same as input's version
 */
- (BOOL)blIsEqualWithVersion:(NSString *)versionNumber;

/*!
 * @brief Check if device's version is larger than a specific version
 * @param versionNumber A specific version (ex: 9.1, 9.3.3,...)
 * @return Return YES if device's version is bigger than input's version
 */
- (BOOL)blIsLargerThanVersion:(NSString *)versionNumber;

/*!
 * @brief Check if current device is iPhone/iPod
 * @return Return YES if current device is iPod/iPhone
 */
- (BOOL)blIsPhone;

/*!
 * @brief Check if current device is iPad
 * @return Return YES if current device is iPad
 */
- (BOOL)blIsPad;

@end
