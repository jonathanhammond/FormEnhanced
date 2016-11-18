//
//  FirstViewController.m
//  TabTest
//
//  Created by Jon Hammond on 25/10/2016.
//  Copyright © 2016 Sprung Studios. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import <Performer/PMDocumentConnectionManager.h>
#import <Performer/PMDocumentCacheManager.h>
#import <Performer/PMDocumentPresentationCoordinator.h>
#import <Performer/PMRDocumentViewController.h>
#import "ConnectViewController.h"

@interface FirstViewController ()

@property (strong, nonatomic) PMDocumentConnectionManager *connectionManager;
@property (strong, nonatomic) PMDocumentCacheManager *documentManager;
@property (strong, nonatomic) PMDocumentPresentationCoordinator *presentationCoordinator;
@property (strong, nonatomic) PMRDocumentViewController *DocumentViewController;

@end





@implementation FirstViewController




- (IBAction)FordButton:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"FordUnicorn" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
    
}

- (IBAction)pathBuilder:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"pathBuilder" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
}
- (IBAction)iBlarz:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Iconbuilder" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
}

- (IBAction)buttonsPack:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Buttonspack" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
    
}
- (IBAction)scrollerButton:(id)sender {
    
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.window.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Carasol" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
    
}

- (IBAction)activityProgressBtn:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.window.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ActivityProgress" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
    
    
}

- (IBAction)GamePadButton:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Iconbuilder" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
    

}
- (IBAction)transitionsButton:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Transitions" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
}
- (IBAction)gridButton:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
    // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Grid" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];
}


- (IBAction)ButtonTouch:(id)sender {
    // Create a file URL that points to the document on disk and then launch the document.
    
    self.windowTab0 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // presentation coordinator manages showing form documents
    _presentationCoordinator = [[PMDocumentPresentationCoordinator alloc] initWithWindow:self.windowTab0];
    
    _documentManager = [[PMDocumentCacheManager alloc] init];
    
    // assemble the main UI layout
    self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
   // self.windowTab0.backgroundColor = [UIColor whiteColor];
    [self.windowTab0 makeKeyAndVisible];
    
    //    application.idleTimerDisabled = YES;
    
    // start the server to handle inbound connections now that the app is ready
    _connectionManager = [[PMDocumentConnectionManager alloc] initWithPresentationCoordinator:_presentationCoordinator
                                                                                 cacheManager:_documentManager];
    [_connectionManager restartServer];
    
    UIDevice *device = [UIDevice currentDevice];
    [device setProximityMonitoringEnabled:YES];
    
    if (device.proximityMonitoringEnabled == YES) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(proximityChanged:)
                                                     name:@"UIDeviceProximityStateDidChangeNotification"
                                                   object:device];
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"shaders" ofType:@"form"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    
    [self openDocumentAtURL:fileURL];

    

}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"didLoad");

  //  return YES;

}

- (void) proximityChanged:(NSNotification *)notification {
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate.window makeKeyAndVisible];
    
    UIDevice *device = [notification object];
    NSLog(@"In proximity: %i", device.proximityState);
      //  [UIScreen mainScreen].wantsSoftwareDimming = NO;
    
    
    if (_presentationCoordinator.viewState == PMDocumentViewStatePresenting) {
        [_presentationCoordinator closeDocumentWithAnimation:NO handler:nil];
    }

    [_connectionManager shutdownServer];
    
    [device setProximityMonitoringEnabled:NO];
  
    
    NSLog(@"didclosecleanly");

}


// Launch a Form document from a URL

- (void)openDocumentAtURL:(NSURL *)url { NSError *error = nil;
    PMRDocumentViewController *vc = [[PMRDocumentViewController alloc] initWithURL:url error:&error];
    if (vc == nil) {
        NSLog(@"Failed to create document view controller: %@", error);
        return;
    }
    
    vc.delegate = (id)_connectionManager;
    vc.options = PMRDocumentOptionsNone;
    
    // If the current presented doc is server connected, we need to disconnect so the host knows
    
    if ([_presentationCoordinator.documentViewController isConnectedWithHost]) {
        [_connectionManager restartServer];
    }
    
    [_presentationCoordinator openDocumentWithViewController:vc animate:YES handler:nil];
    
    NSLog(@"helloworld2");
    // assemble the main UI layout
  //  self.windowTab0.rootViewController = [[ConnectViewController alloc] init];
  //  self.windowTab0.backgroundColor = [UIColor whiteColor];
  //  [self.windowTab0 makeKeyAndVisible];

   // application.idleTimerDisabled = YES;
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
