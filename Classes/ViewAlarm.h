//
//  ViewAlarm.h
//  iTalkAlarm
//
//  Created by ugsw on 30/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecordVoice.h"
#import "SetAlarm.h"
#import "CustomViewAlarmTable.h"

@interface ViewAlarm : UIViewController {
	
	IBOutlet UITableView *tableViewAlarm;
	IBOutlet UIButton *btnRecord;
	IBOutlet UIButton *btnSetAlarm;
	IBOutlet UIButton *btnSendAlarm;
	
	NSArray *theArray;
	
}

@property(nonatomic,retain)IBOutlet UITableView *tableViewAlarm;
@property (nonatomic, retain) NSArray *theArray;

-(IBAction)btnRecord_Clicked;
-(IBAction)btnSetAlarm_Clicked;
-(IBAction)btnSendAlarm_Clicked;
-(IBAction)btnBack_click;
-(IBAction)Edit_Click;
- (IBAction) EditTable:(id)sender;
//-(void) removeFromList:(NSInteger)index;

@end
