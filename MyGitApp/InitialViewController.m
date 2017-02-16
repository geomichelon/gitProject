//
//  InitialViewController.m
//  MyGitApp
//
//  Created by Developer-01 on 05/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "InitialViewController.h"
#import "MainViewController.h"

@interface InitialViewController ()
{
    
    NSString *valuetoSearch;
}

@end

@implementation InitialViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
    _btnGo.enabled=false;
    _btnGo.alpha=0.6;
    self.searchTxt.delegate=self;
    self.btnGo.layer.cornerRadius=5;
    
    NSUserDefaults *getUserValues=[NSUserDefaults standardUserDefaults];
    _searchTxt.text=[getUserValues objectForKey:@"userGit"];
    
   

    
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    
       if ([_searchTxt isFirstResponder] && [touch view] != _searchTxt) {
        [_searchTxt resignFirstResponder];
           
          
           
           }
    if ([_searchTxt isFirstResponder] && [touch view] != _searchTxt) {
        [_searchTxt resignFirstResponder];
        
        

        
    }
    
    [super touchesBegan:touches withEvent:event];
}



// If we want to execute  when click in keyboard button

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder]; // Dismiss the keyboard.
    // Execute any additional code
    
    if ([_searchTxt.text isEqualToString:@""]) {
      
        NSLog(@"hey digite algo ai");
        _searchTxt.layer.borderColor=[[UIColor redColor]CGColor];
        _searchTxt.layer.borderWidth=1.0;
        _searchTxt.layer.cornerRadius=5;
        _searchTxt.placeholder=@"Need a user name ...";
        
          return NO;
        
        
    }
    
    if ([_searchTxt.text isEqualToString:@""]) {
        
        NSLog(@"hey digite algo ai");
       
        _searchTxt.layer.borderColor=[[UIColor whiteColor]CGColor];
        _searchTxt.layer.borderWidth=0;
        _searchTxt.layer.cornerRadius=5;
        _searchTxt.placeholder=@"Need a user name ...";
        
        return NO;
    }
    
    
    
    
    else{
        
        NSLog(@"go button clicked");
        return YES;
        
    }
    return YES;

}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    NSLog(@"valor agora  :%lu",_searchTxt.text.length);
    
    
   // _btnGo.enabled=YES;
   // _btnGo.alpha=1;

    
    if (_searchTxt.text.length ==2) {
        
        _btnGo.enabled=NO;
        _searchTxt.layer.borderColor=[[UIColor redColor]CGColor];
        _searchTxt.layer.borderWidth=1.0;
        _searchTxt.layer.cornerRadius=2;
        _searchTxt.placeholder=@"Type a git user ...";
        
        _btnGo.alpha=0.5;
        
    }
    
  else  if (_searchTxt.text.length ==1) {
        
        _btnGo.enabled=NO;
       
        _searchTxt.layer.borderColor=[[UIColor whiteColor]CGColor];
        _searchTxt.layer.borderWidth=0;
        _searchTxt.layer.cornerRadius=5;
        _searchTxt.placeholder=@"Type a git user ...";
        _btnGo.alpha=0.5;
        
    }

    
    else{
        
         _btnGo.enabled=YES;
         _btnGo.alpha=1;
        _searchTxt.layer.borderColor=[[UIColor whiteColor]CGColor];
        _searchTxt.layer.borderWidth=0;
        _searchTxt.layer.cornerRadius=5;
        
    }
    
    
    
    
    
    return YES;
}


- (IBAction)goToSearch:(id)sender {
    
    NSUserDefaults *saveUserValues=[NSUserDefaults standardUserDefaults];
    [saveUserValues setObject:_searchTxt.text forKey:@"userGit"];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainView" bundle:nil];
    [self presentViewController:[storyboard instantiateViewControllerWithIdentifier: @"MainView"] animated:YES completion:nil];

    
  

    
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
