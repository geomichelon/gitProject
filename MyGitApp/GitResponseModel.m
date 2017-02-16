//
//  GitResponseModel.m
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "GitResponseModel.h"
#import <Mantle/Mantle.h>


@class GitListModel;

@implementation GitResponseModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
            
              @"myItens" : @"items"
             };
}

#pragma mark - JSON Transformer

+ (NSValueTransformer *)myItensJSONTransformer {
    
        return [MTLJSONAdapter arrayTransformerWithModelClass:GitListModel.class];
}

@end
