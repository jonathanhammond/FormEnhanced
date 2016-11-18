//
//  AppDelegate.m
//  CustomPatchViewer
//
//  Created by Max Weisel on 11/19/15.
//  Copyright © 2015 Max Weisel. All rights reserved.
//

#import "AppDelegate.h"
#import <Performer/PMDocumentConnectionManager.h>
#import <Performer/PMDocumentCacheManager.h>
#import <Performer/PMDocumentPresentationCoordinator.h>
#import <Performer/PMDocumentOptionsProtocol.h>

//#import "ConnectViewController.h"
#import "FirstViewController.h"
#import "ReplayKitPreviewHandler.h"

@interface AppDelegate ()

@property (strong, nonatomic) PMDocumentConnectionManager *connectionManager;
@property (strong, nonatomic) PMDocumentCacheManager *documentManager;
@property (strong, nonatomic) PMDocumentPresentationCoordinator *presentationCoordinator;
@property (strong, nonatomic) ReplayKitPreviewHandler *replayKitPreviewHandler;

@end

@implementation AppDelegate
// Proximity Sensor Notification


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
  
  //  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.window];
    
    // Handle the replay kit callbacks
    _replayKitPreviewHandler = [[ReplayKitPreviewHandler alloc] initWithPresentationCoordinator:_presentationCoordinator];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    


    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    return YES;
    
    
}







- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Close document and connection cleanly
 //   if (_presentationCoordinator.viewState == PMDocumentViewStatePresenting) {
 //       [_presentationCoordinator closeDocumentWithAnimation:NO handler:nil];
 //   }
    
 //   [_connectionManager shutdownServer];
 //   NSLog(@"DidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
   //     NSLog(@"EnterForeground");
   // [_connectionManager restartServer];
//    [super viewWillAppear:animated]

    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
