//
//  DetailViewController.m
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "DetailViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>

#define numLine 2

@interface DetailViewController ()
@property (nonatomic) GitLocalData *values;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    //round image
    
    _image.layer.cornerRadius = _image.frame.size.height /2;
    _image.layer.masksToBounds = YES;
     _image.layer.borderWidth = 0;
    
    //get necessary values from the our screen
    self.username.numberOfLines=numLine;
    self.imageURL=self.values.avatar_url;
    self.username.text= [NSString stringWithFormat:@"%@\n%@",@"",self.values.login];
    self.gravatar_id.text= self.values.gravatar_id;
    self.following_url.text= self.values.following_url;
    self.followers_url.text= self.values.followers_url;
    self.repos_url.text= self.values.repos_url;
    self.events_url.text= self.values.events_url;
    self.received_events_url.text= self.values.received_events_url;
    
      //save image in cache...
    
    
   self.imageURL= self.imageURL;
    dispatch_async(dispatch_get_main_queue(), ^{
      
        
        [_image setImageWithURL:[NSURL URLWithString:self.imageURL] placeholderImage:[UIImage imageNamed:@"gitImage.png"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
         });
    
 
    
}
//
- (void)setValuesToShow:(GitLocalData*)myValues {
   
    self.values = myValues;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 
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
 
 
 */

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
