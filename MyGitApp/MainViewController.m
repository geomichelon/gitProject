//
//  MainViewController.m
//  MyGitApp
//
//  Created by Developer-01 on 06/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
#import "API.h"
#import "GitLocalData.h"
#import <Realm/Realm.h>
#import "gitCells.h"



@interface MainViewController ()

@property (nonatomic, strong) RLMResults *myItens;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.rowHeight = 50;
    
   
    
   
    [self getAndSaveInfo];

    
}


-(void)getAndSaveInfo{
    
    
    
    NSUserDefaults *getUserValues=[NSUserDefaults standardUserDefaults];
    _userNameToSearch=[getUserValues objectForKey:@"userGit"];
    
    
    GitRequestModel *request= [GitRequestModel new];
    request.searchUser =_userNameToSearch;
    
    [[API sharedManager] getInfoFromGitInRequest:request success:^(GitResponseModel  *responseModel) {
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            @autoreleasepool {
                
              
               
                
                RLMRealm *localData = [RLMRealm defaultRealm];
                [localData beginWriteTransaction];
                [localData deleteAllObjects];
                [localData commitWriteTransaction];
                
                [localData beginWriteTransaction];
                
                
                for(GitListModel *myGitItens in responseModel.myItens){
                    GitLocalData *valueToSave = [[GitLocalData alloc] initWithModel:myGitItens];
                    [localData addObject:valueToSave];
                    
                }
                
                
                [localData commitWriteTransaction];
                
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    
                    RLMRealm *thread= [RLMRealm defaultRealm];
                    RLMResults *gitInfoResults= [GitLocalData allObjectsInRealm:thread];
                    self.myItens=gitInfoResults;
                    NSLog(@"valores%@",self.myItens);
                                       
                    [self.tableView reloadData];
                    
                    
                });
            }
        });
        
    }
     
     
                                         failure:^(NSError *error)
     {
         self.myItens = [GitLocalData allObjects];
         NSLog(@"error description: %ld",(long)error.code);
         NSString* ErrorResponse = [[NSString alloc] initWithData:(NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] encoding:NSUTF8StringEncoding];
         NSLog(@"error%@",ErrorResponse.classForCoder);
       
         [self.tableView reloadData];
         
         
     }];

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.myItens count];
  
    
}



- (float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
   
    //if want a footer space
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 2.0f;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    gitCells *cell = [tableView dequeueReusableCellWithIdentifier:@"gitRepoCell" forIndexPath:indexPath];
    
    // Configure the cell...
    GitLocalData *myLocalData = self.myItens[[indexPath item]];
    [cell.layer setCornerRadius: 12];
    [cell.layer setMasksToBounds:YES];
    [cell.layer setBorderWidth:1.0f];
 
    
   CGColorRef myColor = [[UIColor darkGrayColor] CGColor];
   [cell.layer setBorderColor:myColor];
   cell.backgroundColor = [UIColor groupTableViewBackgroundColor];
        
    
    cell.loginCell.text=myLocalData.login;
    cell.reposCell.text=myLocalData.gravatar_id;
    
    
    NSLog(@"valor do login agora:%@",myLocalData);
    
    
    
    return cell;
  
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    DetailViewController *detailGitInfo = [self.storyboard instantiateViewControllerWithIdentifier:@"gitDetails"];
    GitLocalData *mylocalInfo = self.myItens[indexPath.row];
    [self.navigationController pushViewController:detailGitInfo animated:YES];
    [detailGitInfo setValuesToShow:mylocalInfo];
    
    
}





@end
