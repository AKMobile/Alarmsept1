//
//  setLabel.m
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "setLabel.h"


@implementation setLabel

@synthesize txtAlarm,backBtn;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(void)viewWillDisappear:(BOOL)animated
{
	//iTalkAlarmAppDelegate *app=[[UIApplication sharedApplication] delegate];
	
	[SingletonClass sharedobject].strAlarmTitle=txtAlarm.text;
	[SingletonClass sharedobject].strAlarmTitle=txtAlarm.text;
	
	NSLog(@"%@",txtAlarm.text);
	NSLog(@"title..%@",[SingletonClass sharedobject].strAlarmTitle);
}


-(IBAction)back_click
{
	
	
	//iTalkAlarmAppDelegate *app=[[UIApplication sharedApplication] delegate];
	
	[SingletonClass sharedobject].strAlarmTitle=txtAlarm.text;

	[self dismissModalViewControllerAnimated:YES];


}
-(IBAction)hidekeyboard
{

	[txtAlarm resignFirstResponder];
}



- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	//iTalkAlarmAppDelegate *app=[[UIApplication sharedApplication] delegate];
	
	[SingletonClass sharedobject].strAlarmTitle=txtAlarm.text;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
