//
//  API.m
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "API.h"
#import "Mantle.h"
#import "Kvalues.h"
#import <SVProgressHUD.h>

@implementation API


- (NSURLSessionDataTask *)getInfoFromGitInRequest:(GitRequestModel *)requestModel
                                              success:(void (^)(GitResponseModel *responseModel))success
                                              failure:(void (^)(NSError *error))failure{
    
   
    
    NSDictionary *parameters = [MTLJSONAdapter JSONDictionaryFromModel:requestModel error:nil];
    
    //If API has a Key
   // NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
  
    
    return [self GET:kBaseToSearch parameters:parameters
            
             success:^(NSURLSessionDataTask *Gittask, id responseObject) {
                 
                 [SVProgressHUD showWithStatus:@"loading git users..."];

                 NSDictionary *responseDictionary = (NSDictionary *)responseObject;
                 
                 NSError *error;
                 GitResponseModel *list = [MTLJSONAdapter modelOfClass:GitResponseModel.class
                                                            fromJSONDictionary:responseDictionary error:&error];
                 success(list);
                  NSLog(@"%@",list);
                  [SVProgressHUD showSuccessWithStatus:@"loaded"];
                 
             }
            
             failure:^(NSURLSessionDataTask *Gittask, NSError *error) {
                 
                 failure(error);
                 NSString* ErrorResponse = [[NSString alloc] initWithData:(NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] encoding:NSUTF8StringEncoding];
                 NSLog(@"%@",ErrorResponse);
                   [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"Ops error %ld",(long)error.code]];
                 
                 
             }];
}






@end
