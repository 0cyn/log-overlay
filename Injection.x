#include "KDBManager.h"

#define NSLog(...) [KDBManager.sharedInstance logString:[NSString stringWithFormat:__VA_ARGS__] file:__FILE__ line:__LINE__]

@interface SBHomeScreenViewController : UIViewController

@end

%hook SBHomeScreenViewController 

-(void)loadView 
{
    %orig;

    
    [self.view addSubview:[[KDBManager sharedInstance] overlayView]];
    [KDBManager.sharedInstance setupOverlayView];
    NSLog(@"Log Overlay Initialized");
}

%end