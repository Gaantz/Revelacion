//
//  MediaItem.m
//  revelacionextrema
//
//  Created by Cristian Palomino Rivera on 17/05/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import "MediaItem.h"

@implementation MediaItem

- (AUMediaType)itemType {
    return AUMediaTypeAudio;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_author forKey:@"author"];
    [aCoder encodeObject:_title forKey:@"title"];
    [aCoder encodeObject:_remotePath forKey:@"remotePath"];
    [aCoder encodeObject:_uid forKey:@"uid"];
    [aCoder encodeObject:_fileTypeExtension forKey:@"fileTypeExtension"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [[MediaItem alloc] init];
    if (self) {
        _author = [aDecoder decodeObjectForKey:@"author"];
        _title = [aDecoder decodeObjectForKey:@"title"];
        _uid = [aDecoder decodeObjectForKey:@"uid"];
        _remotePath = [aDecoder decodeObjectForKey:@"remotePath"];
        _fileTypeExtension = [aDecoder decodeObjectForKey:@"fileTypeExtension"];
    }
    return self;
}

@end
