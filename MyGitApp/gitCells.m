//
//  gitCells.m
//  MyGitApp
//
//  Created by Developer-01 on 07/02/17.
//  Copyright © 2017 George Michelon. All rights reserved.
//

#import "gitCells.h"
#import "myGitStyles.h"

@implementation gitCells

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.loginCell.textColor = [UIColor darkGrayColor];
    self.loginCell.font = [UIFont fontWithName: myGitStyles.RegularFontName size: 16];
    
    self.reposCell.textColor = [UIColor darkGrayColor];
    self.reposCell.font = [UIFont fontWithName: myGitStyles.RegularFontName size: 10];

        
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}





@end
