

#ifndef RELEASE

#import <Foundation/Foundation.h>

@interface KDBManager : NSObject

+(instancetype)sharedInstance;

-(void)logString:(NSString *)string file:(char *)file line:(int)line;

@end

#define NSLog(...) [KDBManager.sharedInstance logString:[NSString stringWithFormat:__VA_ARGS__] file:__FILE__ line:__LINE__]

#endif