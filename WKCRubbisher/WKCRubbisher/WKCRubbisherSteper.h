//
//  WKCRubbisherSteper.h
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//
//
//  本类作用: 在工程已有的类中插入一些无用的方法或类.
//
//
//  注: 为减轻与源文件的耦合性,是通过添加分类的方式实现(分类声明和实现均隐藏,外部无法访问).
//
//  Insert some useless methods or classes into the existing classes of the project.
//  mark: In order to reduce the coupling with the source file, it is achieved by adding classification (the classification declaration and implementation are hidden, and the outside is inaccessible).

#import <Foundation/Foundation.h>
#import "WKCRubbisherFiler.h"

@interface WKCRubbisherSteper : NSObject

/** 项目类型*/
@property (nonatomic, assign) WKCProjectType projectType;
/** 项目全路径 -> 必须设置*/
@property (nonatomic, copy) NSString * projectFullPath;
/** 只处理某些特定类(数组内是类名)*/
@property (nonatomic, strong) NSArray <NSString *> * specificClassNamesArray;


- (void)startRubbish;

@end
