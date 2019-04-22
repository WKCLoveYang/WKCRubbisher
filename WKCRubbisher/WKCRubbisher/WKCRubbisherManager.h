//
//  WKCRubbisherManager.h
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//
//  本类作用: 生成n个无用的文件
//  @param projectType -> 项目类型,OC还是swift
//  @param filesCount -> 文件总个数.
//  @param filePrefix -> 自定义所有文件的前缀名称
//  @param 调用方法startRubbish 开始.
//
//
//  注: 文件中会有一个WKCRubbisher类,其内有类方法fire,调用时会主动将所有无用类内的方法全部都调用一遍

//  create useless files
//  @param projectType -> OC or Swift
//  @param filesCount -> file total counts
//  @param filePrefix -> filePrefix
//  @param method startRubbish to start.
// mark: There will be a WKCRubbisher class, which has a class method fire, which will automatically call all the methods in the useless class.

///////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////


#import <Foundation/Foundation.h>
#import "WKCRubbisherFiler.h"

@interface WKCRubbisherManager : NSObject

/** 要创建项目类型 */
@property (nonatomic, assign) WKCProjectType projectType;
/** 文件总个数 默认50*/
@property (nonatomic, assign) NSInteger filesCount;
/** 要生成文件的文件前缀 -> 不设置默认以wkc开头*/
@property (nonatomic, copy) NSString * filePrefix;

// 开始
- (void)startRubbish;

@end

