//  Created by tashigaofei on 13/08/26.
//  Copyright (c) 2013 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>

@class MPVolumeObserver;
@protocol MPVolumeObserverProtocol <NSObject>
-(void) volumeButtonDidClick:(MPVolumeObserver *) button;
@end


@interface MPVolumeObserver : NSObject
@property (nonatomic, assign) id<MPVolumeObserverProtocol> delegate;

+(MPVolumeObserver*) sharedInstance;
-(void)startObserveVolumeChangeEvents;
-(void)stopObserveVolumeChangeEvents;

@end
