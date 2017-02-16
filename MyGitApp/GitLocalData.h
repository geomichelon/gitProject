//
//  GitLocalData.h
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import <Realm/Realm.h>
#import "GitListModel.h"
#import "RLMObject.h"


@interface GitLocalData : RLMObject


//@property (nonatomic, copy) NSString *login;
@property(nonatomic,copy)NSString *avatar_url;
@property(nonatomic,copy)NSString *login;
@property(nonatomic,copy)NSString *gravatar_id;
@property(nonatomic,copy)NSString *url;
@property(nonatomic,copy)NSString *followers_url;
@property(nonatomic,copy)NSString *following_url;
@property(nonatomic,copy)NSString *starred_url;
@property(nonatomic,copy)NSString *organizations_url;
@property(nonatomic,copy)NSString *repos_url;
@property(nonatomic,copy)NSString *events_url;
@property(nonatomic,copy)NSString *received_events_url;

- (id)initWithModel:(GitListModel *)myGitModel;





@end
