//
//  CustomAlarmTable.h
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomAlarmTable : UITableViewCell {
	
	UILabel *lblCategoryName;
	UILabel *lblPicked;
	

}
@property (nonatomic,retain)UILabel *lblCategoryName;
@property (nonatomic,retain)UILabel *lblPicked;

@end
