//
//  WKCResourceMapper.m
//  WKCResourceMapper
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import "WKCResourceMapper.h"
#import <AppKit/AppKit.h>
#import "WKCResourceFiler.h"

typedef NS_ENUM(NSInteger,WKCResourceType) {
    WKCResourceTypePNG = 0,
    WKCResourceTypeJPG,
    WKCResourceTypeJPEG,
    WKCResourceTypeJSON
};

@interface WKCResourceMapper()

@property (nonatomic, assign) WKCResourceType resourceType;
@property (nonatomic, copy) NSString * fileFullPath;

@end

@implementation WKCResourceMapper

- (instancetype)init
{
    if (self = [super init])
    {
        _mapperSubfix = @"_wkcMapper";
    }
    return self;
}

- (void)startMapper
{
    BOOL isDirectoryIsExist = [WKCResourceFiler wkc_isDirectoryExistAtPath:_projectFullPath];
    if (!isDirectoryIsExist)
    {
        NSLog(@"<<<<<<<< Project is unexist! >>>>>>>>>");
        return ;
    }
    
    [WKCResourceFiler wkc_forwardXcassertsAtPath:_projectFullPath
                                          handle:^(NSString *dir) {
                                              
                                              self.fileFullPath = [self.projectFullPath stringByAppendingPathComponent:dir];
        
                                              NSString * componment = self.fileFullPath.lastPathComponent;
                                              
                                              if ([componment hasSuffix:@".png"])
                                              {
                                                  self.resourceType = WKCResourceTypePNG;
                                              }
                                              else if ([componment hasSuffix:@".jpg"])
                                              {
                                                self.resourceType = WKCResourceTypeJPG;
                                              }
                                              else if ([componment hasSuffix:@".jpeg"])
                                              {
                                                  self.resourceType = WKCResourceTypeJPEG;
                                              }
                                              else if ([componment hasSuffix:@".json"])
                                              {
                                                  self.resourceType = WKCResourceTypeJSON;
                                              }
                                          }];
}

- (void)setResourceType:(WKCResourceType)resourceType
{
    _resourceType = resourceType;
    
    if (resourceType == WKCResourceTypeJSON)
    {
        NSFileHandle *writeHandle = [NSFileHandle fileHandleForWritingAtPath:_fileFullPath];
        NSFileHandle *readHandle = [NSFileHandle fileHandleForReadingAtPath:_fileFullPath];
        NSData *data = [readHandle readDataToEndOfFile];
        NSString *fileString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        NSString *imageSourceName = [self wkc_jsonGetImageNameWithContentDic:dic]; //得到资源
    
        if (imageSourceName && (imageSourceName.length != 0))
        {
            NSString * newImageSourceName = [imageSourceName stringByAppendingString:_mapperSubfix]; // 生成一个新名字
            fileString = [fileString stringByReplacingOccurrencesOfString:imageSourceName withString:newImageSourceName]; // 新名字替换旧名字
            
            NSData * data = [fileString dataUsingEncoding:NSUTF8StringEncoding];
            [writeHandle writeData:data]; // 重新写进文件
        }
        
        [readHandle closeFile];
        [writeHandle closeFile];
    }
    else
    {
        NSFileManager * fileManager = [NSFileManager defaultManager];
        //图片名
        NSString * imageName = [self wkc_filterX:_fileFullPath.lastPathComponent];
        //更改后的新名称
        NSString * newImageName = [imageName stringByAppendingString:_mapperSubfix];
        //新的全路径
        NSString * newFileFullPath = [[_fileFullPath stringByDeletingLastPathComponent] stringByAppendingPathComponent:[_fileFullPath.lastPathComponent stringByReplacingOccurrencesOfString:imageName withString:newImageName]];
        //把图片稍微压缩下,改变原size
        [self wkc_imageCompressionWithFullPath:_fileFullPath];
        
        //替换实际图片
        BOOL isSuccess = [fileManager moveItemAtPath:_fileFullPath
                                              toPath:newFileFullPath
                                               error:nil];
        NSLog(@"<<<< %@ image exchangeName %@", imageName, isSuccess ? @"success" : @"failure");
    }
}

- (NSString *)wkc_jsonGetImageNameWithContentDic:(NSDictionary *)dic
{
    NSArray <NSDictionary *>* images = dic[@"images"];
    
    NSString * imageName = [NSString string];
    
    for (NSDictionary * itemDic in images)
    {
        NSString * name = itemDic[@"filename"]; //资源名
        if (!name || (name.length == 0)) continue; //不要为空的
        imageName = name;
    }
    
    return [self wkc_filterX:imageName];
}


// 过滤掉@2x,@3x等得到资源名
- (NSString *)wkc_filterX:(NSString *)xName
{
    if ([xName containsString:@"@2x.png"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@"@2x.png" withString:@""];
    }
    else if ([xName containsString:@"@3x.png"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@"@3x.png" withString:@""];
    }
    else if ([xName containsString:@".png"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@".png" withString:@""];
    }
    else if ([xName containsString:@"@2x.jpg"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@"@2x.jpg" withString:@""];
    }
    else if ([xName containsString:@"@3x.jpg"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@"@3x.jpg" withString:@""];
    }
    else if ([xName containsString:@".jpg"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@".jpg" withString:@""];
    }
    else if ([xName containsString:@"@2x.jpeg"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@"@2x.jpeg" withString:@""];
    }
    else if ([xName containsString:@"@3x.jpeg"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@"@3x.jpeg" withString:@""];
    }
    else if ([xName containsString:@".jpeg"])
    {
        xName = [xName stringByReplacingOccurrencesOfString:@".jpeg" withString:@""];
    }
    return xName;
}

- (void)wkc_imageCompressionWithFullPath:(NSString *)path
{
    NSImage *simg = [[NSImage alloc] initWithContentsOfFile:path];
    NSData *imgDt = [simg TIFFRepresentation];
    NSBitmapImageRep *imageRep = [NSBitmapImageRep imageRepWithData:imgDt];
    imgDt = [imageRep representationUsingType:NSBitmapImageFileTypePNG properties:@{NSImageCompressionFactor:@(0.98)}];
    BOOL isSuccess = [imgDt writeToFile:path atomically:YES];
    NSLog(@"<<<<< image %@ compression %@! >>>>>>",path.lastPathComponent, isSuccess ? @"success" : @"failure");
}

@end
