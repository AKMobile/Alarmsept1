//
//  CustomViewAlarmTable.h
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomViewAlarmTable : UITableViewCell {
	UILabel *lblAlarmName;
	UILabel *lblAlarmTime;
	UIButton *btnEdit;
	
	
}
@property(nonatomic,retain)UILabel *lblAlarmName;
@property(nonatomic,retain)UILabel *lblAlarmTime;
@property(nonatomic,retain)UIButton *btnEdit;


@end
