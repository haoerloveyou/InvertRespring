#import <objc/runtime.h>
#import <libkern/OSAtomic.h>


@interface PUIProgressWindow : NSObject {
    BOOL  _forceInverted;
}
- (id)initWithProgressBarVisibility:(BOOL)arg1 level:(float)arg2 forceInverted:(BOOL)arg3;
@end

%hook PUIProgressWindow


- (id)initWithProgressBarVisibility:(BOOL)arg1 level:(float)arg2 forceInverted:(BOOL)arg3
{
	%orig(arg1, arg2, YES);
}

%end