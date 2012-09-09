//
//  PlayersViewController.h
//  Ratings
//
//  Created by Fernando Lopes on 15/08/12.
//  Copyright (c) 2012 Fernando Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end
