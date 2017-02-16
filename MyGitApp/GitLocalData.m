//
//  GitLocalData.m
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "GitLocalData.h"


@implementation GitLocalData

- (id)initWithModel:(GitListModel *)myGitModel{
    
    
    self = [super init];
    if(!self) return nil;
    
    self.avatar_url = myGitModel.avatar_url;
    self.login=myGitModel.login;
    self.url=myGitModel.url;
    self.gravatar_id=myGitModel.gravatar_id;
    self.followers_url=myGitModel.followers_url;
    self.following_url=myGitModel.following_url;
    self.starred_url=myGitModel.starred_url;
    self.organizations_url=myGitModel.organizations_url;
    self.repos_url=myGitModel.repos_url;
    self.events_url=myGitModel.events_url;
    self.received_events_url=myGitModel.received_events_url;
  
    
    return self;

      
    
    
    
}

 
 



@end
