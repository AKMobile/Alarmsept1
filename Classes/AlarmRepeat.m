//
//  AlarmRepeat.m
//  iTalkAlarm
//
//  Created by ugsw on 08/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "AlarmRepeat.h"


@implementation AlarmRepeat

@synthesize scheduleControl,tableRepeat;
@synthesize arrRepeat,strSound;

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
	
	
	tableRepeat.clipsToBounds = YES;
	tableRepeat.layer.cornerRadius = 10;
	
	tableRepeat.layer.borderWidth = 2.0;
	tableRepeat.layer.borderColor = [UIColor blackColor].CGColor;
	
	
	
	arrRepeat=[[NSMutableArray alloc]init];
	
	[arrRepeat addObject:@"None"];
	[arrRepeat addObject:@"Every Minute"];
	[arrRepeat addObject:@"Every Hour"];
	[arrRepeat addObject:@"Every Day"];
	[arrRepeat addObject:@"Every Week"];//NSInteger index = [scheduleControl selectedSegmentIndex];
	
}

-(void)viewWillDisappear:(BOOL)animated
{
	//iTalkAlarmAppDelegate *aa=[[UIApplication sharedApplication] delegate];
	
	//aa.segmentValue = [scheduleControl selectedSegmentIndex];
	NSLog(@"valuedisaappearing..%d",[SingletonClass sharedobject].segmentValue);
}
-(IBAction)back_click
{
	
	
		
	[self dismissModalViewControllerAnimated:YES];
	
	
}





- (NSInteger) tableView: (UITableView *) table numberOfRowsInSection: (NSInteger)section {
	
	//	RecordVoice *mainViewController = (RecordVoice *) self.delegate;
	//	MPMediaItemCollection *currentQueue = mainViewController.userMediaItemCollection;
	return [arrRepeat count];//[currentQueue.items count];
}

- (UITableViewCell *) tableView: (UITableView *) tableView1 cellForRowAtIndexPath: (NSIndexPath *) indexPath {
	
	static NSString *kCellIdentifier = @"Cell";
	
	//iTalkAlarmAppDelegate *ap=[[UIApplication sharedApplication] delegate];
	
	NSInteger row = [indexPath row];
	UITableViewCell *cell =(UITableViewCell *) [tableRepeat dequeueReusableCellWithIdentifier: kCellIdentifier];
	
	if (cell == nil) {
		
		cell = [[[UITableViewCell alloc] initWithFrame: CGRectZero 
										reuseIdentifier: kCellIdentifier] autorelease];
	}
	
	//	RecordVoice  *mainViewController = (RecordVoice *) self.delegate;
	//	MPMediaItemCollection *currentQueue = mainViewController.userMediaItemCollection;
	//	MPMediaItem *anItem = (MPMediaItem *)[currentQueue.items objectAtIndex: row];
	
	//if (anItem) {
	cell.textLabel.text = [arrRepeat objectAtIndex:row];
	NSLog(@"strnbnbnb....%@",[SingletonClass sharedobject].strRepeatName);
	
	if([arrRepeat containsObject:[SingletonClass sharedobject].strRepeatName])
	{
		//UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
		if(	[SingletonClass sharedobject].repeatRow==row)
		{
			
			cell.accessoryType= UITableViewCellAccessoryCheckmark;
			
		}
		else {
			cell.accessoryType= UITableViewCellAccessoryNone;
		}
		
	}
	
		
	//[tableView deselectRowAtIndexPath: indexPath animated: YES];
	
	return cell;
}

//	 To conform to the Human Interface Guidelines, selections should not be persistent --
//	 deselect the row after it has been selected.
- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
	
	int i=indexPath.row;
	
	//iTalkAlarmAppDelegate *ap=[[UIApplication sharedApplication] delegate];
	
	[SingletonClass sharedobject].segmentValue=i;
	
	
	[SingletonClass sharedobject].strRepeatName=[arrRepeat objectAtIndex:indexPath.row];
	
	NSLog(@"str....%@",strSound);
	
	
	if([arrRepeat containsObject:[SingletonClass sharedobject].strRepeatName])
	{
		//UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
		//newCell.accessoryType= UITableViewCellAccessoryCheckmark;
		[SingletonClass sharedobject].repeatRow = [indexPath row];
		[tableRepeat reloadData];
	}
		
	
}











/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
