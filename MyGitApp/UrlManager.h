//
//  UrlManager.h
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface UrlManager : AFHTTPSessionManager

+ (id)sharedManager;

@end
