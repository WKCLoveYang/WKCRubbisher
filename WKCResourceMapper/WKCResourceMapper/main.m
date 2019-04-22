//
//  main.m
//  WKCResourceMapper
//
//  Created by WeiKunChao on 2019/4/13.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WKCResourceMapper.h"
#import "WKCResouceBorner.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        WKCResourceMapper * mapper = [[WKCResourceMapper alloc] init];
//        mapper.projectFullPath = @"你的项目地址";
//        [mapper startMapper];
        
        WKCResouceBorner * resourceBorner = [[WKCResouceBorner alloc] init];
        resourceBorner.thisScriptFullPath = @"/Users/weikunchao/Desktop/MyData/Mine/WKCRubbisher/WKCResourceMapper";
        [resourceBorner startBorn];
    }
    return 0;
}
