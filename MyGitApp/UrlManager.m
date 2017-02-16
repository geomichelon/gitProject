//
//  UrlManager.m
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "UrlManager.h"
#import "Kvalues.h"


@implementation UrlManager

- (id)init {
    
    
    self = [super initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    if(!self) return nil;
    
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    
    return self;
}



+ (id)sharedManager {
    
    
    static UrlManager *_Manager = nil;
    
    //Singleton method
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _Manager = [[self alloc] init];
   
    });
    
    
    
    return _Manager;
}





@end
