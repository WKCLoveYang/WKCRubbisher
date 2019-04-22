//
//  WKCRubbisherManager.m
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import "WKCRubbisherManager.h"
#import "WKCRubbisherDirectory.h"

@implementation WKCRubbisherManager

- (instancetype)init
{
    if (self = [super init])
    {
        _filesCount = 50;
        _filePrefix = @"WKC";
    }
    return self;
}

- (void)startRubbish
{
    WKCRubbisherDirectory * directory = [[WKCRubbisherDirectory alloc] init];
    NSString * directoryFullPath = [directory wkc_createDirectory];
    
    // 所有的imports
    NSString * imports = [NSString string];
    // 方法内容
    NSString * methodContents = [NSString string];
    
    for (NSInteger index = 0; index < _filesCount; index ++)
    {
        WKCRubbisherFiler * file = [[WKCRubbisherFiler alloc] init];
        file.projectType = _projectType;
        file.directoryFullPath = directoryFullPath;
        file.filePrefix = _filePrefix;
        
        NSString * className = [file wkc_createFile]; // 拿到类名
        NSArray <WKCRubbisherFileItem *>* methods = file.methodNamesArray; // 拿到方法名对象数组
        
        if (_projectType == WKCProjectTypeObjectC)
        {
            imports = [imports stringByAppendingFormat:@"#import \"%@.h\"\n", className];
            NSString * content = [NSString stringWithFormat:@"\n\n\t%@ * %@_obj = [[%@ alloc] init];", className, className, className];
            for (WKCRubbisherFileItem * item in methods)
            {
                content = [content stringByAppendingFormat:@"\n\t[%@_obj %@];", className, item.name];
            }
            methodContents = [methodContents stringByAppendingString:content];
        }
        else
        {
            NSString * content = [NSString stringWithFormat:@"\n\n\t\tlet %@_obj: %@ = %@()", className, className, className];
            for (WKCRubbisherFileItem * item in methods)
            {
                content = [content stringByAppendingFormat:@"\n\t\t%@_obj.%@()", className, item.name];
            }
            methodContents = [methodContents stringByAppendingString:content];
        }
    }
    
    [self wkc_createClassRubbisherWithDirectory:directoryFullPath
                                        imports:imports
                                  methodContent:methodContents];
}

// 生成一个Rubbisher类,用来调用所有文件的所有方法
- (void)wkc_createClassRubbisherWithDirectory:(NSString *)directory
                                      imports:(NSString *)imports
                                methodContent:(NSString *)content
{
    NSString * fileContent = [NSString string];
    NSString * className = @"WKCRubbisher"; //类名
    
    if (_projectType == WKCProjectTypeObjectC)
    {
        // .h文件处理
        NSString * hFullPath = [directory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.h", className]]; //h类全路径
        // 生成.h文件内容
        fileContent = [NSString stringWithFormat:@"\n\n\n\n\n#import <Foundation/Foundation.h>\n\n@interface %@ : NSObject\n", className];
        fileContent = [fileContent stringByAppendingString:@"\n\n//调用此方法能将所有生成的类的方法都调用一遍\n+ (void)fire;\n\n\n@end"];
        BOOL isHCreateSuccess = [WKCRubbisherFiler wkc_createFileWithPath:hFullPath content:fileContent];
        
        NSLog(@"============Handle file %@.h create %@!", className, isHCreateSuccess ? @"success" : @"failure");
        
        
        // .m文件处理
        NSString * mFullPath = [directory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.m", className]]; //m类全路径
        fileContent = [NSString stringWithFormat:@"\n\n\n\n\n#import \"%@.h\"\n%@\n\n\n", className, imports];
        fileContent = [fileContent stringByAppendingFormat:@"@implementation %@\n\n+ (void)fire\n{\n\t@autoreleasepool\n\t{%@\n\n\t}\n\n}\n\n\n@end", className, content];
        BOOL isMCreateSuccess = [WKCRubbisherFiler wkc_createFileWithPath:mFullPath content:fileContent];
        
        NSLog(@"============Handle file %@.m create %@!", className, isMCreateSuccess ? @"success" : @"failure");
    }
    else
    {
        NSString * swiftFullPath = [directory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.swift", className]]; //swift类全路径
        //生成swift文件内容
        fileContent = [NSString stringWithFormat:@"\n\n\n\n\nimport Foundation\n\n\nclass %@: NSObject\n{\n\n\tstatic func fire()\n\t{\n\t\tautoreleasepool\n\t\t{%@\n\n\t\t}\n\t}\n\n}", className, content];
        BOOL isSwiftCreateSuccess = [WKCRubbisherFiler wkc_createFileWithPath:swiftFullPath content:fileContent];
        NSLog(@"============Handle file %@.swift create %@!", className, isSwiftCreateSuccess ? @"success" : @"failure");
    }
    
    NSLog(@"<<<<<<<<< Congratulations, all content was created successfully! >>>>>>>>");
}

@end
