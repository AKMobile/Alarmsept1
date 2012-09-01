//
//  setLabel.h
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iTalkAlarmAppDelegate.h"


@interface setLabel : UIViewController {
	
	IBOutlet UITextField *txtAlarm;
	IBOutlet UIButton *backBtn;

}

@property(nonatomic,retain)IBOutlet UITextField *txtAlarm;
@property(nonatomic,retain)IBOutlet UIButton *backBtn;

-(IBAction)back_click;
-(IBAction)hidekeyboard;


@end
