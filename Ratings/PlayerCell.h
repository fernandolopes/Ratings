//
//  PlayerCell.h
//  Ratings
//
//  Created by Fernando Lopes on 16/08/12.
//  Copyright (c) 2012 Fernando Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView
*ratingImageView;

@end
