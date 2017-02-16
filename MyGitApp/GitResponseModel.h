//
//  GitResponseModel.h
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//


#import "GitListModel.h"


@interface GitResponseModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSArray *myItens;


@end
