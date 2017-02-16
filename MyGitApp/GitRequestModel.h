//
//  GitRequestModel.h
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "AFHTTPSessionManager.h"

@interface GitRequestModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString *searchUser;




@end
