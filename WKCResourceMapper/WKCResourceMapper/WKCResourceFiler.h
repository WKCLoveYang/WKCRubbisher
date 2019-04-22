//
//  WKCResourceFiler.h
//  WKCResourceMapper
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKCResourceFiler : NSObject

// 判断文件夹是否存在
+ (BOOL)wkc_isDirectoryExistAtPath:(NSString *)path;

// 遍历文件夹
+ (void)wkc_forwardXcassertsAtPath:(NSString *)path
                            handle:(void(^)(NSString * dir))handle;

@end
