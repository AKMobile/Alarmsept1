//
//  AlarmRepeat.h
//  iTalkAlarm
//
//  Created by ugsw on 08/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iTalkAlarmAppDelegate.h"


@interface AlarmRepeat : UIViewController {
	
	IBOutlet UISegmentedControl *scheduleControl;
	IBOutlet UITableView *tableRepeat;
	NSMutableArray *arrRepeat;
	NSString *strSound;

}
@property (nonatomic,retain) IBOutlet UISegmentedControl *scheduleControl;
@property (nonatomic,retain) IBOutlet UITableView *tableRepeat;
@property (nonatomic,retain) IBOutlet NSMutableArray *arrRepeat;
@property (nonatomic,retain) NSString *strSound;
-(IBAction)back_click;

@end
