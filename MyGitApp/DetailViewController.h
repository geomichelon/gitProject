//
//  DetailViewController.h
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GitLocalData.h"


@interface DetailViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *username;
@property (strong, nonatomic) IBOutlet NSString *imageURL;
@property (strong, nonatomic) IBOutlet UILabel *url;
@property (strong, nonatomic) IBOutlet UILabel *gravatar_id;
@property (strong, nonatomic) IBOutlet UILabel *avatar_url;
@property (strong, nonatomic) IBOutlet UILabel *followers_url;
@property (strong, nonatomic) IBOutlet UILabel *following_url;
@property (strong, nonatomic) IBOutlet UILabel *repos_url;
@property (strong, nonatomic) IBOutlet UILabel *events_url;
@property (strong, nonatomic) IBOutlet UILabel *received_events_url;





- (void)setValuesToShow:(GitLocalData*)myValues;

@end
