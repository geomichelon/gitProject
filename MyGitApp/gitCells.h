//
//  gitCells.h
//  MyGitApp
//
//  Created by Developer-01 on 07/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myGitStyles.h"

@interface gitCells : UITableViewCell


@property (strong, nonatomic) IBOutlet UILabel *loginCell;

@property (strong, nonatomic) IBOutlet UILabel *reposCell;


@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activity;


@end
