//
//  NSString+Utils.h
//  DemoBLUtilities
//
//  Created by Binh Le on 8/10/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Utils)

/*!
 * @brief Validate the string.
 * @param string String to check
 * @return Return YES if it is not nil or empty
 */
+ (BOOL)blIsValidString:(NSString *)string;

/*!
 * @brief Validate an email
 * @param email Email to check
 * @return Return YES if email has valid format
 */
+ (BOOL)blIsValidEmail:(NSString *)email;

/*!
 * @brief Trim white space in string
 * @return Return a new string after trimming
 */
- (NSString *)blTrimWhiteSpaces;

/*!
 * @brief Check if input is existed in string
 * @param string input
 * @return Return YES if string contains input
 */
- (BOOL)blContains:(NSString *)string;

/*!
 * @brief Check if ending characters are input
 * @param string input
 * @return Return YES if string ends with characters which are same as input
 */
- (BOOL)blEndsWith:(NSString *)string;

/*!
 * @brief Check if beginning characters are input
 * @param string input
 * @return Return YES if string begins with characters which are same as input
 */
- (BOOL)blBeginsWith:(NSString *)string;

/*!
 * @brief Convert a string to a Dictionary
 * @return Return a NSDictionary
 */
- (NSDictionary *)blToJSONDictionary;

@end
