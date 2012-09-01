//
//  iTalkAlarmAppDelegate.m
//  iTalkAlarm
//
//  Created by ugsw on 30/07/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "iTalkAlarmAppDelegate.h"

@implementation iTalkAlarmAppDelegate

@synthesize window;
@synthesize mainView,nav;
@synthesize deviceToken,payload,certificate;
//@synthesize strAlarmTitle;



NSString *kRemindMeNotificationDataKey = @"kRemindMeNotificationDataKey";
#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	mainView = [[[MainView alloc]init]autorelease];
	
	//strAlarmTitle=[[NSString alloc]init];
	
//	nav = [[UINavigationController alloc]initWithRootViewController:mainView];
//	self.window.rootViewController=self.nav;
	/////////////////////////////////////////////////////
	
	SetAlarm *setAlarm=[[[SetAlarm alloc]init]autorelease];
	
	Class cls = NSClassFromString(@"UILocalNotification");
	if (cls) {
		UILocalNotification *notification = [launchOptions objectForKey:
											 UIApplicationLaunchOptionsLocalNotificationKey];
		
		if (notification) {
			NSString *reminderText = [notification.userInfo 
									  objectForKey:kRemindMeNotificationDataKey];
			[setAlarm showReminder:reminderText];
		}
	}
	
	application.applicationIconBadgeNumber = 0;
	
	
	
	
	////////////////////////////////////////////////////
	self.window.rootViewController=self.mainView;
	
	
	
	
	
	
	
    
    [self.window makeKeyAndVisible];
	
	
	
	[[UIApplication sharedApplication] registerForRemoteNotificationTypes:
	 (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];
	
	
	
    
    return YES;
}

//- (void)createArray {
//	//NSArray *myArray = [[[NSArray alloc] init];//Witha];
//	theArray = [SingletonClass sharedobject].arrAlarmName;
//}
//
//
//-(void) removeFromList:(NSInteger)index { 
//	NSMutableArray *tempArray = [[NSMutableArray alloc] initWithArray:theArray];
//	[tempArray removeObjectAtIndex:index];
//	theArray = tempArray;
//}




- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken1 { 
	
    NSString *str = [NSString 
					 stringWithFormat:@"Device Token=%@",deviceToken1];
    NSLog(@"device......%@",str);
	
}

- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)err { 
	
    NSString *str = [NSString stringWithFormat: @"Error: %@", err];
    NSLog(@"device......%@",str);    
	
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
	
    for (id key in userInfo) {
        NSLog(@"key: %@, value: %@", key, [userInfo objectForKey:key]);
    }    
	
}


- (id)init {
    self = [super init];
    if(self != nil) {
							//6240d771 c9a0778e 92aa9a3e 5dd712e2 0ec263ad f25ba8b6 635eac5d 8969e5d9
        self.deviceToken = @"6240d771 c9a0778e 92aa9a3e 5dd712e2 0ec263ad f25ba8b6 635eac5d 8969e5d9";
		
        self.payload = @"{\"aps\":{\"alert\":\"You got a new alarm message!\",\"badge\":5,\"sound\":\"Blow.aiff\"},\"acme1\":\"bar\",\"acme2\":42}";
		
        self.certificate = [[NSBundle mainBundle] 
							pathForResource:@"aps_development" ofType:@"cer"];
    }
    return self;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
	application.applicationIconBadgeNumber = 0;
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}
- (void)application:(UIApplication *)application 
didReceiveLocalNotification:(UILocalNotification *)notification {
	
	// UIApplicationState state = [application applicationState];
	// if (state == UIApplicationStateInactive) {
	
	// Application was in the background when notification
	// was delivered.
	// }
	NSLog(@"First alert");
/*	if([SingletonClass sharedobject].intsound ==0)
	{
	RecordVoice *voice=[[RecordVoice alloc]init];
	[voice saveRecording];
		
		
		[SingletonClass sharedobject].intsound =11;
		
	}
 */
	SetAlarm *setAlarm=[[SetAlarm alloc]init];

	
	application.applicationIconBadgeNumber = 0;
	NSString *reminderText = [notification.userInfo
							  objectForKey:kRemindMeNotificationDataKey];
	[setAlarm showReminder:reminderText];
	
	
	
	if(application.applicationState == UIApplicationStateActive ) { 
        NSLog(@"Received: %@", notification.alertBody);
        // alert, because app is running in foreground
    }
	
	
	
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
