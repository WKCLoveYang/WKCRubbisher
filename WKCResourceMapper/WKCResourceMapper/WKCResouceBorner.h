//
//  WKCResouceBorner.h
//  WKCResourceMapper
//
//  Created by WeiKunChao on 2019/4/14.
//  Copyright © 2019 SecretLisa. All rights reserved.
//
// 本类: 生成混淆资源(桌面)
//
// Create obfuscated resources (desktop)
// mark : @param thisScriptFullPath is needed

#import <Foundation/Foundation.h>

@interface WKCResouceBorner : NSObject

/** 这个脚本 的全路径*/
@property (nonatomic, copy) NSString * thisScriptFullPath;
/** 个数 默认100张*/
@property (nonatomic, assign) NSUInteger resourceCount;

- (void)startBorn;

@end
