//
//  SingletonClass.h
//  iTalkAlarm
//
//  Created by ugsw on 29/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SingletonClass : NSObject {
	
	NSString *strAlarmTitle;
	NSString *strAlarmTime;
	NSString *strAlarmSound;
	NSString *strSoundName;
	NSString *strRepeatName;
	NSString *strRecordPath;
	NSMutableArray *arrAlarmName,*arrAlarmTime;
	NSMutableArray *arrRecorded,*arrRecordedVoice;
	NSData *audio,*audio1,*audio2,*audio3,*audio4;
	int selectrow,segmentValue,repeatRow,intrecord,intsound,k;
	

}
@property(nonatomic,retain)NSString *strAlarmTitle;
@property(nonatomic,retain)NSString *strAlarmTime;
@property(nonatomic,retain)NSString *strAlarmSound;
@property(nonatomic,retain)NSString *strSoundName;
@property(nonatomic,retain)NSString *strRepeatName;
@property(nonatomic,retain)NSString *strRecordPath;
@property(nonatomic,retain)NSMutableArray *arrAlarmName,*arrAlarmTime;
@property(nonatomic,retain)NSMutableArray *arrRecorded,*arrRecordedVoice;
@property(nonatomic,retain)NSData *audio,*audio1,*audio2,*audio3,*audio4;
@property(nonatomic,assign)int selectrow,segmentValue,repeatRow,intrecord,intsound,k;

+(SingletonClass *)sharedobject;

@end
