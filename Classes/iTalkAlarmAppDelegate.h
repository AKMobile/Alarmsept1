//
//  iTalkAlarmAppDelegate.h
//  iTalkAlarm
//
//  Created by ugsw on 30/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"
#import "SetAlarm.h"
#import "RecordVoice.h"

@class MainView;

@interface iTalkAlarmAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	MainView *mainView;
	
	//NSString *strAlarmTitle;
	NSString *deviceToken;
	NSString *payload;
	NSString *certificate;
	
	//NSArray *theArray;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic,retain) MainView *mainView;
@property (nonatomic, retain) IBOutlet UINavigationController *nav;


@property(nonatomic,retain)NSString *deviceToken;
@property(nonatomic,retain)NSString *payload;
@property(nonatomic,retain)NSString *certificate;
//@property (nonatomic, retain) NSArray *theArray;

////-(void) createArray;
//-(void) removeFromList:(NSInteger)index;


//@property(nonatomic,retain)NSString *strAlarmTitle;


extern NSString *kRemindMeNotificationDataKey;

@end

