//
//  Player.h
//  Ratings
//
//  Created by Fernando Lopes on 15/08/12.
//  Copyright (c) 2012 Fernando Lopes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) int rating;

@end
