//
//  GitRequestModel.m
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "GitRequestModel.h"

@implementation GitRequestModel


#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"searchUser": @"q",
            
             };
}



@end
