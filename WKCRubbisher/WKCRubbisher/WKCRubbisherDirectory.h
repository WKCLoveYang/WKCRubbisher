//
//  WKCRubbisherDirectory.h
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/12.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKCRubbisherDirectory : NSObject

// 创建一个文件夹 -> (位置在桌面) ->返回文件夹全路径
- (NSString *)wkc_createDirectory;

@end

