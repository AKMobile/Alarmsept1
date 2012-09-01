//
//  setSound.h
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "CustomAlarmTable.h"
#import "iTalkAlarmAppDelegate.h"


@interface setSound : UIViewController {
	
	IBOutlet UITableView *tableSound;
	NSMutableArray *arrSound;
	NSIndexPath *lastIndexPath;
	
	int selectedrow;

}
@property(nonatomic,retain)IBOutlet UITableView *tableSound;
@property(nonatomic,retain)NSMutableArray *arrSound;
@property(nonatomic,retain)NSIndexPath *lastIndexPath;
@property(nonatomic, assign)int selectedrow;

-(IBAction)back_click;
-(IBAction)recordedButton;

@end
