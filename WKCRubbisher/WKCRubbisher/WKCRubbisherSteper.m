//
//  WKCRubbisherSteper.m
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import "WKCRubbisherSteper.h"

@implementation WKCRubbisherSteper

- (void)startRubbish
{
    NSFileManager * fileManager = [NSFileManager defaultManager];
    BOOL projectExist = [fileManager fileExistsAtPath:_projectFullPath];
    NSAssert(projectExist, @"<<<<<< Project is unexist! >>>>>>");
    
    [self wkc_forwardAllFiles:_projectFullPath
                       handle:^(NSString *dir) {
        
                           [self wkc_handleWithAFileWithDir:dir];
                       }];
}

- (void)wkc_handleWithAFileWithDir:(NSString *)dir
{
    //去除不需要处理项目
    if (![self wkc_isTheFileShouldBeHandleWithDir:dir]) return ;
    
    NSString * fileFullPath = [_projectFullPath stringByAppendingPathComponent:dir];
    [self wkc_writeFileToPath:fileFullPath];
}

- (BOOL)wkc_isTheFileShouldBeHandleWithDir:(NSString *)dir
{
    if (!_specificClassNamesArray || _specificClassNamesArray.count == 0) return YES;
    
    for (NSString * className in _specificClassNamesArray)
    {
        if ([dir containsString:className])
        {
            return YES;
        }
    }
    return NO;
}

- (void)wkc_writeFileToPath:(NSString *)path
{
    NSFileHandle * writeHandle = [NSFileHandle fileHandleForWritingAtPath:path]; //写入
    NSFileHandle * readHandle = [NSFileHandle fileHandleForReadingAtPath:path]; //读取
    
    NSData * readData = [readHandle readDataToEndOfFile];
    NSString * readString = [[NSString alloc] initWithData:readData
                                                  encoding:NSUTF8StringEncoding]; //文件原内容
    
    NSInteger end = [writeHandle seekToEndOfFile];
    [writeHandle seekToFileOffset:end]; //到达指定位置
    NSString * content = [self wkc_contentWithReadString:readString className:path.lastPathComponent];
    NSData * data = [content dataUsingEncoding:NSUTF8StringEncoding];
    [writeHandle writeData:data]; // 写入数据
    
    //关闭操作
    [readHandle closeFile];
    [writeHandle closeFile];
    
    NSLog(@"<<<<<< File %@ write into success! >>>>>>>>>", path.lastPathComponent);
}

- (NSString * )wkc_contentWithReadString:(NSString *)readString className:(NSString *)className
{
    NSString * content = @"\n\n\n\n\n//*********************************************\n//以下是添加的垃圾方法\n//*********************************************";
    
    NSUInteger randomNumber = 1 + arc4random() % 6;
    
    if (_projectType == WKCProjectTypeObjectC)
    {
        className = [className stringByReplacingOccurrencesOfString:@".m"
                                                         withString:@""];
        
        content = [content stringByAppendingFormat:@"\n@interface %@ (WKCRubbisherSteper)\n\n//********************声明内无内容\n\n@end\n\n@implementation %@ (WKCRubbisherSteper)\n", className, className];
        
        for (NSInteger index = 0; index < randomNumber; index ++)
        {
            NSString * methodName = [[WKCRubbisherFiler randomContent] stringByAppendingString:[WKCRubbisherFiler wkc_chartsArray][arc4random() % [WKCRubbisherFiler wkc_chartsArray].count]];
            NSString * method = [NSString stringWithFormat:@"\n- (void)%@\n{\n\tfor (NSInteger i = 0; i < 3; i++)\n\t{\n\t\tNSString *str = @\"func name = %@\";\n\t\t[str stringByAppendingString:@\"time is 3\"];\n\t\tNSLog(@\"%%@\", str);\n\t}\n}\n", methodName, methodName];
            if ([readString containsString:method]) continue; //已有该方法,跳过
            if ([content containsString:method]) continue; //已有该方法,跳过
            
            content = [content stringByAppendingFormat:@"%@", method];
        }
        
        content = [content stringByAppendingString:@"\n\n@end"];
    }
    else
    {
        content = [content stringByAppendingString:@"\nprivate extension NSObject\n{"];
        
        for (NSInteger index = 0; index < randomNumber; index ++)
        {
            NSString * methodName = [[WKCRubbisherFiler randomContent] stringByAppendingString:[WKCRubbisherFiler wkc_chartsArray][arc4random() % [WKCRubbisherFiler wkc_chartsArray].count]];
            NSString * method = [NSString stringWithFormat:@"\n\tprivate func %@()\n\t{\n\t\tfor item in 0..<4\n\t\t{\n\t\t\tprint(\"运行,run,go,\\(item)\")\n\t\t}\n\t}\n", methodName];
            if ([readString containsString:method]) continue; //已有该方法,跳过
            if ([content containsString:method]) continue; //已有该方法,跳过
            
            content = [content stringByAppendingString:method];
        }
        
        content = [content stringByAppendingString:@"}"];
    }
    
    content = [content stringByAppendingString:@"\n//*********************************************\n//以上是添加的垃圾方法\n//*********************************************"];
    
    return content;
}




- (void)wkc_forwardAllFiles:(NSString *)directory
                     handle:(void(^)(NSString *dir))handle
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *dirEnumrator = [fileManager enumeratorAtPath:directory];
    
    while ((directory = [dirEnumrator nextObject]) != nil)
    {
        if (_projectType == WKCProjectTypeObjectC)
        {
            if ([directory containsString:@"main"]) continue; //跳过main
            if (![directory containsString:@".m"]) continue; // 只处理.m
            if ([directory containsString:@"Pods"]) continue; //跳过pods
            if ([directory containsString:@"Tests/"]) continue; //跳过Tests
            if ([directory containsString:@"UITests/"]) continue; //跳过UITests
            if ([directory containsString:@"AppDelegate"]) continue; //跳过Delegate
            if ([directory containsString:@"+"]) continue; //跳过分类
        }
        else
        {
            if (![directory containsString:@".swift"]) continue; // 只处理.swift
            if ([directory containsString:@".h"]) continue; //跳过pods
            if ([directory containsString:@".m"]) continue; //跳过pods
            if ([directory containsString:@"Pods"]) continue; //跳过pods
            if ([directory containsString:@"Tests/"]) continue; //跳过Tests
            if ([directory containsString:@"UITests/"]) continue; //跳过UITests
            if ([directory containsString:@"AppDelegate"]) continue; //跳过Delegate
        }
        if (handle) handle(directory);
    }
}

@end
