//
//  WKCResourceMapper.h
//  WKCResourceMapper
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//
//  本类作用: 更改实际的资源名和Content.json内的名称,但不会改变图片的引用名
//  例如 [UIImage imageNamed: @"testImage"]; 更改后实际名变成了testImage_wkcMapper, 但实际引用名仍然是testImage, 仍是[UIImage imageNamed: @"testImage"];使用.  不改变原来的更改. 并且在更改发的过程中会简单压缩0.98比例，改变源图的size.

//  @param projectFullPath: 工程全路径
//  @param mapperSubfix : 自己想添加的后缀

//  This class does: change the actual resource name and the name in Content.json, but does not change the reference name of the image.
//  For example [UIImage imageNamed: @"testImage"]; The actual name becomes testImage_wkcMapper after the change, but the actual reference name is still testImage, which is still [UIImage imageNamed: @"testImage"];
//  use. Does not change the original change. And in the process of changing the hair will simply compress the 0.98 scale and change the size of the source image.

#import <Foundation/Foundation.h>

@interface WKCResourceMapper : NSObject

/** 工程全路径*/
@property (nonatomic, copy) NSString * projectFullPath;
/** 更改是通过添加后缀完成的*/
@property (nonatomic, copy) NSString * mapperSubfix;

- (void)startMapper;

@end
