//
//  RecordVoice.h
//  iTalkAlarm
//
//  Created by ugsw on 30/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SetAlarm.h"
#import "ViewAlarm.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "iTalkAlarmAppDelegate.h"
#import "JSON.h"
#import "SingletonClass.h"
#import "sendAlarm.h"

@interface RecordVoice : UIViewController<AVAudioRecorderDelegate>
 
{
	
	
IBOutlet UIButton *btnSetAlarm;
IBOutlet UIButton *btnViewAlarm;
	IBOutlet UIButton *btnSendAlarm;
	
	
	IBOutlet UIProgressView *progressView;
	IBOutlet UILabel *lblStatusMsg;
	
	NSMutableDictionary *recordSetting;
	NSMutableDictionary *editedObject;
	NSString *recorderFilePath;
	AVAudioRecorder *recorder;
	AVAudioPlayer *avPlayer;
	SystemSoundID soundID;
	NSTimer *timer;
//	 NSURL * tempFilePath;
	BOOL toggle;
	NSURL * recordedTmpFile;
	NSError * error;
	NSString *strRecordedVoice;
	
	NSMutableArray *savedRecordings;
	NSMutableArray *cafFiles;
	
	NSString *deviceToken;
	NSString *payload;
	NSString *certificate;
	
	NSMutableData *receivedData;
	NSDictionary *parsedJSON;
	
	int i;

}
@property (nonatomic, retain) NSMutableArray *savedRecordings;
@property (nonatomic, retain) NSMutableArray *cafFiles;

@property(nonatomic,retain)NSString *deviceToken;
@property(nonatomic,retain)NSString *payload;
@property(nonatomic,retain)NSString *certificate;

@property(nonatomic,assign)int i;

-(IBAction)btnSetAlarm_Clicked;
-(IBAction)btnViewAlarm_Clicked;
-(IBAction)btnSendAlarm_Clicked;
-(IBAction)startRecording;
-(IBAction)stopRecording;
- (IBAction)playSound;
-(IBAction)saveRecording;
-(void)listenRecord;
//-(void)InitialCheckMethod;


@end
