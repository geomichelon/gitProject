//
//  GitListModel.h
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "MTLModel.h"


@interface GitListModel : MTLModel<MTLJSONSerializing>


@property (nonatomic, copy) NSString *login;
@property (nonatomic, copy) NSString *avatar_url;
@property (nonatomic, copy) NSString *gravatar_id;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *html_url;
@property (nonatomic, copy) NSString *followers_url;
@property (nonatomic, copy) NSString *following_url;
@property (nonatomic, copy) NSString *starred_url;
@property (nonatomic, copy) NSString *organizations_url;
@property (nonatomic, copy) NSString *repos_url;
@property (nonatomic, copy) NSString *events_url;
@property (nonatomic, copy) NSString *received_events_url;




@end
