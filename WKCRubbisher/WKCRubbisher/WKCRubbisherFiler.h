//
//  WKCRubbisherFiler.h
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/4.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WKCRubbisherFileItem.h"

/**
 项目类型
 */
typedef NS_ENUM(NSInteger,WKCProjectType) {
    /**OC*/
    WKCProjectTypeObjectC = 0,
    /**Swift*/
    WKCProjectTypeSwift
};

typedef NS_ENUM(NSInteger, WKCRubbisherFilerType) {
    WKCRubbisherFilerTypeH = 0,
    WKCRubbisherFilerTypeM,
    WKCRubbisherFilerTypeSwift
};


@interface WKCRubbisherFiler : NSObject

/** 要创建项目类型 */
@property (nonatomic, assign) WKCProjectType projectType;
/** 文件所处文件夹全路径*/
@property (nonatomic, copy) NSString * directoryFullPath;
/** 要生成文件的文件前缀 -> 不设置默认以wkc开头*/
@property (nonatomic, copy) NSString * filePrefix;

/** 存放方法名的数组*/
@property (nonatomic, strong, readonly) NSMutableArray <WKCRubbisherFileItem *> * methodNamesArray;

// 创建一个文件 -> 返回文件名
- (NSString *)wkc_createFile;



// 创建文件 path->全路径, content->文件内容
+ (BOOL)wkc_createFileWithPath:(NSString *)path
                       content:(NSString *)content;
// 随机一个方法名
+ (NSString *)randomContent;

// 随机一个字母
+ (NSArray <NSString *>*)wkc_chartsArray;

@end

