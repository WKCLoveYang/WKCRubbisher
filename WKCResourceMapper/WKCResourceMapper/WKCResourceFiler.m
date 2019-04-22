//
//  WKCResourceFiler.m
//  WKCResourceMapper
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import "WKCResourceFiler.h"

@implementation WKCResourceFiler

+ (BOOL)wkc_isDirectoryExistAtPath:(NSString *)path
{
    NSFileManager * fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:path];
}

+ (void)wkc_forwardXcassertsAtPath:(NSString *)path
                            handle:(void(^)(NSString * dir))handle
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *dirEnumrator = [fileManager enumeratorAtPath:path];
    while ((path = [dirEnumrator nextObject]) != nil)
    {
        if ([path containsString:@".xcassets"])
        {
            if ([path containsString:@"AppIcon"]) continue; //不处理icon
            if (handle) handle(path);
        }
        else
        {
            continue; //只处理资源
        }
    }
}

@end
