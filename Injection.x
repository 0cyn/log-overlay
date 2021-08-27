#include <Foundation/Foundation.h>
#include <UIKit/UIKit.h>

#include <SpringBoard/SBHomeScreenViewController.h>

#include "KDBManager.h"

#define NSLog(...) [KDBManager.sharedInstance logString:[NSString stringWithFormat:__VA_ARGS__] file:__FILE__ line:__LINE__]


@interface UISystemGestureView : UIView

@end

%hook UISystemGestureView

-(void)movedToSuperview:(UIView *)view
{
    %orig(view);
    
    [view addSubview:[[KDBManager sharedInstance] overlayView]];
    [KDBManager.sharedInstance setupOverlayView];
    NSLog(@"Log Overlay Initialized");
}

%end
