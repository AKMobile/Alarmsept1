//
//  CustomViewAlarmTable.m
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomViewAlarmTable.h"



@implementation CustomViewAlarmTable
@synthesize lblAlarmName,lblAlarmTime,btnEdit;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
		lblAlarmName = [[[UILabel alloc]initWithFrame:CGRectMake(5,40,90,20)]autorelease];
        lblAlarmName.backgroundColor = [UIColor clearColor];
		lblAlarmName.textColor = [UIColor blackColor];
        
		
		lblAlarmTime = [[[UILabel alloc]initWithFrame:CGRectMake(5,5,80, 35)]autorelease];
        lblAlarmTime.backgroundColor = [UIColor clearColor];
		lblAlarmTime.textColor = [UIColor grayColor];
		lblAlarmTime.font = [UIFont systemFontOfSize:18];
		
		btnEdit=[[UIButton alloc]initWithFrame:CGRectMake(240,10,80,60)];
		btnEdit.backgroundColor=[UIColor redColor];
		
		
		
		
		[self.contentView addSubview:lblAlarmName];
		[self.contentView addSubview:lblAlarmTime];
		[self.contentView addSubview:btnEdit];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}


- (void)dealloc {
    [super dealloc];
}


@end
