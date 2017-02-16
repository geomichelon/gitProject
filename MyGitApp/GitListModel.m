//
//  GitListModel.m
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "GitListModel.h"

@implementation GitListModel


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             
             @"login":@"login",
             @"avatar_url":@"avatar_url",
             @"gravatar_id":@"gravatar_id",
             @"url":@"url",
             @"html_url":@"html_url",
             @"followers_url":@"followers_url",
             @"following_url":@"following_url",
             @"starred_url":@"starred_url",
             @"organizations_url":@"organizations_url",
             @"repos_url":@"repos_url",
             @"events_url":@"events_url",
             @"received_events_url":@"received_events_url"
             
             };
}




@end
