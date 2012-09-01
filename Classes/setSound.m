//
//  setSound.m
//  iTalkAlarm
//
//  Created by ugsw on 03/08/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "setSound.h"


@implementation setSound
@synthesize tableSound,arrSound,lastIndexPath,selectedrow;

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
	
	
	
	tableSound.clipsToBounds = YES;
	tableSound.layer.cornerRadius = 10;
	
	tableSound.layer.borderWidth = 2.0;
	tableSound.layer.borderColor = [UIColor blackColor].CGColor;
	
	
	
	arrSound=[[NSMutableArray alloc]init];
	
	
	[arrSound addObject:@"Basso"];
	[arrSound addObject:@"Blow"];
	[arrSound addObject:@"Bottle"];
	[arrSound addObject:@"Frog"];
	[arrSound addObject:@"Funk"];
	[arrSound addObject:@"Hero"];
	[arrSound addObject:@"Morse"]; 
	[arrSound addObject:@"Ping"];
	[arrSound addObject:@"Pop"];
	[arrSound addObject:@"Purr"];
	[arrSound addObject:@"Submarine"];
	[arrSound addObject:@"Tink"];
	 
	
	
	
	
}

-(IBAction)recordedButton
{
	//iTalkAlarmAppDelegate *ap=[[UIApplication sharedApplication] delegate];
	//NSLog(@"sound...%@",ap.arrRecorded);
	//NSLog(@"sound...%@",[SingletonClass sharedobject].arrRecorded);
	[SingletonClass sharedobject].intrecord=1;

	//arrSound=[[NSMutableArray alloc]initWithArray:[SingletonClass sharedobject].arrRecorded];
	arrSound=[[NSMutableArray alloc]init];
	//[arrSound addObject:@"rec1"];
//	[arrSound addObject:@"rec2"];
//	[arrSound addObject:@"rec3"];
//	[arrSound addObject:@"rec4"];
//	[arrSound addObject:@"rec5"];
	arrSound=[SingletonClass sharedobject].arrRecordedVoice;
	[tableSound reloadData];
	
}


-(IBAction)back_click
{
	
	
	//iTalkAlarmAppDelegate *app=[[UIApplication sharedApplication] delegate];
	
		
	[self dismissModalViewControllerAnimated:YES];
	
	
}


- (NSInteger) tableView: (UITableView *) table numberOfRowsInSection: (NSInteger)section {
	
	//	RecordVoice *mainViewController = (RecordVoice *) self.delegate;
	//	MPMediaItemCollection *currentQueue = mainViewController.userMediaItemCollection;
	return [arrSound count];//[currentQueue.items count];
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath {
	
	static NSString *kCellIdentifier = @"Cell";
	
	//iTalkAlarmAppDelegate *ap=[[UIApplication sharedApplication] delegate];
	
//	NSInteger row = [indexPath row];
	UITableViewCell *cell =(UITableViewCell *) [tableView dequeueReusableCellWithIdentifier: kCellIdentifier];
	
	if (cell == nil) {
		
		cell = [[[UITableViewCell alloc] initWithFrame: CGRectZero 
										reuseIdentifier: kCellIdentifier] autorelease];
	}
	
	//	RecordVoice  *mainViewController = (RecordVoice *) self.delegate;
	//	MPMediaItemCollection *currentQueue = mainViewController.userMediaItemCollection;
	//	MPMediaItem *anItem = (MPMediaItem *)[currentQueue.items objectAtIndex: row];
	
		
	//[tableView deselectRowAtIndexPath: indexPath animated: YES];
	NSUInteger row = [indexPath row];
//	NSUInteger oldRow = [lastIndexPath row];
	
	
	


	
	cell.textLabel.text=[arrSound objectAtIndex:indexPath.row];
	
	
	if([arrSound containsObject:[SingletonClass sharedobject].strSoundName])
	{
		//UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
		if(	[SingletonClass sharedobject].selectrow==row)
		{
			
		cell.accessoryType= UITableViewCellAccessoryCheckmark;
			
		}
		else {
			cell.accessoryType= UITableViewCellAccessoryNone;
		}

	}
	
	
	return cell;
}

//	 To conform to the Human Interface Guidelines, selections should not be persistent --
//	 deselect the row after it has been selected.
- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
	
	if([SingletonClass sharedobject].intrecord==1)
	{
		NSLog(@"1111");
		[SingletonClass sharedobject].intsound = [indexPath row]+1;
		NSLog(@"%d",[SingletonClass sharedobject].intsound);
		//[SingletonClass sharedobject].selectrow = [indexPath row];
		[tableView reloadData];
		
		[SingletonClass sharedobject].intrecord=8;
	}
	else {
		NSString *strSound=[arrSound objectAtIndex:indexPath.row];
		NSString *str = [NSString stringWithFormat:@"%@.aiff",strSound];
		
		NSLog(@"%@",str);
		
		//iTalkAlarmAppDelegate *ap=[[UIApplication sharedApplication] delegate];
		//ap.strAlarmSound=str;
		[SingletonClass sharedobject].strAlarmSound=str;
		[SingletonClass sharedobject].strSoundName=strSound;
		
		//[SingletonClass sharedobject].intsound = [indexPath row];
		if([arrSound containsObject:[SingletonClass sharedobject].strSoundName])
		{
			//UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
			//newCell.accessoryType= UITableViewCellAccessoryCheckmark;
			[SingletonClass sharedobject].selectrow = [indexPath row];
			[tableView reloadData];
		}
		
	}

	
		
	//if([arrSound containsObject:[SingletonClass sharedobject].strSoundName])
//	{
//		[SingletonClass sharedobject].intsound = [indexPath row];
//		[tableView reloadData];
//	}
//	
	
	/*
	NSUInteger newRow = [indexPath row];
	NSUInteger oldRow = lastIndexPath.row;
	
	if (!self.lastIndexPath) {
        self.lastIndexPath = indexPath;
    }
	
		
	if (newRow != oldRow)
    {
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
        newCell.accessoryType = UITableViewCellAccessoryCheckmark;
		
        UITableViewCell *oldCell = [tableView cellForRowAtIndexPath: self.lastIndexPath]; 
        oldCell.accessoryType = UITableViewCellAccessoryNone;
		
		//[lastIndexPath autorelease];
		self.lastIndexPath = [indexPath retain];
		
    }
    else
    {
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
        newCell.accessoryType = UITableViewCellAccessoryCheckmark;
//[lastIndexPath autorelease];
		self.lastIndexPath = [indexPath retain];
    }
	
	
	*/
	
	
	//selectedrow = [indexPath row];
	
	
	
	
	
		
	
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
