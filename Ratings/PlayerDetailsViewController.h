//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Fernando Lopes on 09/09/12.
//  Copyright (c) 2012 Fernando Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class PlayerDetailsViewController;
/*
@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:
(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewControllerDidSave:
(PlayerDetailsViewController *)controller;
@end */

@class Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>

- (void)playerDetailsViewControllerDidCancel: (PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController: (PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;

@end

@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate> {
    IBOutlet UILabel *detailLabel;
    IBOutlet UIBarButtonItem *concluido;
}

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (nonatomic, retain) IBOutlet UILabel *detailLabel;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *concluido;


- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
- (IBAction)texto:(id)sender;


@end