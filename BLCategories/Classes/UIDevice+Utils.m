//
//  UIDevice+Utils.m
//  DemoBLUtilities
//
//  Created by Binh Le on 8/10/16.
//  Copyright © 2016 BL. All rights reserved.
//

#import "UIDevice+Utils.h"

@implementation UIDevice (Utils)

- (BOOL)blIsEqualWithVersion:(NSString *)versionNumber {
    
    return [[[UIDevice currentDevice] systemVersion] compare:versionNumber options:NSNumericSearch] == NSOrderedSame;
    
}

- (BOOL)blIsLargerThanVersion:(NSString *)versionNumber {
    
    return [[[UIDevice currentDevice] systemVersion] compare:versionNumber options:NSNumericSearch] == NSOrderedDescending;
    
}

- (BOOL)blIsPhone {
    
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;

}

- (BOOL)blIsPad {
    
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad;

}

@end
