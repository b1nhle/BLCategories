//
//  NSString+Utils.m
//  DemoBLUtilities
//
//  Created by Binh Le on 8/10/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

+ (BOOL)blIsValidString:(NSString *)string {
    
    if (!string) {
        return NO;
    }
    
    return [string length] > 0;
    
}

+ (BOOL)blIsValidEmail:(NSString *)email {
    
    NSPredicate *format = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"];
    if ([format evaluateWithObject:email]) {
        return YES;
    }
    
    return NO;
    
}

- (NSString *)blTrimWhiteSpaces {
    
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}

- (BOOL)blContains:(NSString *)string {
    
    return (string && [self rangeOfString:string].location != NSNotFound);

}

- (BOOL)blEndsWith:(NSString *)string {
    
    if (!string || [string length] > [self length]) {
        return NO;
    }
    
    return ([[self substringFromIndex:([self length] - [string length])] blIsEqualToStringIgnoreCase:string]);
    
}

- (BOOL)blBeginsWith:(NSString *)string {
    
    return ([self rangeOfString:string].location == 0);
    
}

- (BOOL)blIsEqualToStringIgnoreCase:(NSString *)string {
    
    return ([self caseInsensitiveCompare:string] == NSOrderedSame);
    
}

- (NSDictionary *)blToJSONDictionary {
    return [NSJSONSerialization JSONObjectWithData:[self dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
}

@end
