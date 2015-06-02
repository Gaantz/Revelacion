//
//  MediaItem.h
//  revelacionextrema
//
//  Created by Cristian Palomino Rivera on 17/05/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AUMediaPlayer/AUMediaPlayer.h>

@interface MediaItem : NSObject <AUMediaItem>

@property (nonatomic, strong) NSString *uid;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *remotePath;
@property (nonatomic, strong) NSString *fileTypeExtension;

@end
