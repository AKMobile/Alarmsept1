//
//  MainView.h
//  iTalkAlarm
//
//  Created by ugsw on 30/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecordVoice.h"
#import "SetAlarm.h"
#import "ViewAlarm.h"
#import "sendAlarm.h"



@interface MainView : UIViewController 
{
	
	IBOutlet UIButton *btnRecord;
	IBOutlet UIButton *btnSetAlarm;
	IBOutlet UIButton *btnViewAlarm;
	IBOutlet UIButton *btnSendAlarm;

}
-(IBAction)btnRecord_Clicked;
-(IBAction)btnSetAlarm_Clicked;
-(IBAction)btnViewAlarm_Clicked;
-(IBAction)btnSendAlarm_Clicked;

@end
