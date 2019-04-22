//
//  WKCRubbisherDirectory.m
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/12.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import "WKCRubbisherDirectory.h"

@implementation WKCRubbisherDirectory

- (NSString *)wkc_createDirectoryWithName:(NSString *)name
{
    NSFileManager * filerManager = NSFileManager.defaultManager;
    NSString * directoryPath = [[NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:name];
    BOOL isSuccess = [filerManager createDirectoryAtPath:directoryPath
                             withIntermediateDirectories:YES
                                              attributes:nil
                                                   error:nil];
    
    NSLog(@">>>>>>>>%@ directory create %@!", name, isSuccess ? @"success" : @"failure");
    return directoryPath;
}

- (NSString *)wkc_createDirectory
{
    return [self wkc_createDirectoryWithName:@"WKCMixRubbisher"];
}

@end
