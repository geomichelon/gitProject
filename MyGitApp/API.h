//
//  API.h
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "UrlManager.h"
#import "GitRequestModel.h"
#import "GitResponseModel.h"

@interface API : UrlManager


- (NSURLSessionDataTask *)getInfoFromGitInRequest:(GitRequestModel *)requestModel success:(void (^)(GitResponseModel *responseModel))success failure:(void (^)(NSError *error))failure;


@end
