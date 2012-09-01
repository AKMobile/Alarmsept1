//
//  CustomAlarmTable.m
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomAlarmTable.h"


@implementation CustomAlarmTable

@synthesize lblCategoryName,lblPicked;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
		lblCategoryName = [[[UILabel alloc]initWithFrame:CGRectMake(5,5,90,30)]autorelease];
        lblCategoryName.backgroundColor = [UIColor clearColor];
		lblCategoryName.textColor = [UIColor blackColor];
        
		
		lblPicked = [[[UILabel alloc]initWithFrame:CGRectMake(180,6,90, 25)]autorelease];
        lblPicked.backgroundColor = [UIColor clearColor];
		lblPicked.textColor = [UIColor grayColor];
		
		
		[self.contentView addSubview:lblCategoryName];
		[self.contentView addSubview:lblPicked];
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
