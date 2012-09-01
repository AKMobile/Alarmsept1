//
//  SingletonClass.m
//  iTalkAlarm
//
//  Created by ugsw on 29/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SingletonClass.h"


@implementation SingletonClass
@synthesize strAlarmTitle,strAlarmTime,strAlarmSound;
@synthesize strSoundName,selectrow,segmentValue;
@synthesize arrAlarmName,arrAlarmTime,strRepeatName;
@synthesize repeatRow,arrRecorded,intrecord,audio,strRecordPath;
@synthesize intsound,audio1,audio2,audio3,audio4,arrRecordedVoice,k;




static SingletonClass*  _sharedobject=nil;

+(SingletonClass *)sharedobject
{
    @synchronized([SingletonClass class])
    {
		if (!_sharedobject)
			_sharedobject=[[self alloc] init];
		
		return _sharedobject;
    }
	
	return nil;
}

+(id)alloc
{
    @synchronized([SingletonClass class])
    {
        NSAssert(_sharedobject == nil, @"Attempted to allocate a second instance of a singleton.");
        _sharedobject = [super alloc];
        return _sharedobject;
	}
	
	return nil;
}

-(id)init {
	self = [super init];
    if (self != nil) {
		
	}
	
	return self;
}








@end
