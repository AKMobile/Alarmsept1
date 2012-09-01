//
//  SetAlarm.h
//  iTalkAlarm
//
//  Created by ugsw on 30/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecordVoice.h"
#import "ViewAlarm.h"
#import <QuartzCore/QuartzCore.h>
#import <MediaPlayer/MediaPlayer.h>
#import "CustomAlarmTable.h"
#import "iTalkAlarmAppDelegate.h"
#import "setLabel.h"
#import "setSound.h"
#import "sendAlarm.h"

//@protocol MusicTableViewControllerDelegate;

//@interface SetAlarm : UIViewController<MPMediaPickerControllerDelegate, UITableViewDelegate> {
@interface SetAlarm : UIViewController<UITableViewDelegate,UIAlertViewDelegate> {
	
//id <MusicTableViewControllerDelegate>	delegate;
	
	IBOutlet UITableView *tableView;
	IBOutlet UIButton *btnRecord;
	IBOutlet UIButton *btnViewAlarm;
	IBOutlet UIButton *btnSendAlarm;
	
	NSMutableArray *arrayAlarm;
	IBOutlet UIDatePicker *dateTimePicker;
		
	IBOutlet UISegmentedControl *scheduleControl;

}

//@property (nonatomic, assign) id <MusicTableViewControllerDelegate>	delegate;
@property (nonatomic,retain)IBOutlet UITableView *tableView;
@property (nonatomic,retain)NSMutableArray *arrayAlarm;
@property (nonatomic, retain)IBOutlet UIDatePicker *dateTimePicker;
@property (nonatomic,retain) IBOutlet UISegmentedControl *scheduleControl;




-(IBAction)btnRecord_Clicked;
-(IBAction)btnViewAlarm_Clicked;
-(IBAction)btnSendAlarm_Clicked;
//-(IBAction) showMediaPicker: (id) sender;
//-(IBAction) doneShowingMusicList: (id) sender;
-(IBAction)alarmSetButtonTapped:(id)sender;
-(IBAction)alarmCancelButtonTapped:(id)sender;
-(void) scheduleLocalNotificationWithDate:(NSDate *)fireDate;
-(void) presentMessage :(NSString *)message;


- (void)showReminder:(NSString *)text;

@end

//@protocol MusicTableViewControllerDelegate
//
//// implemented in MainViewController.m
//- (void) musicTableViewControllerDidFinish: (SetAlarm *) controller;
//- (void) updatePlayerQueueWithMediaCollection: (MPMediaItemCollection *) mediaItemCollection;
//
//@end

