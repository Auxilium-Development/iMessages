#import <objc/runtime.h>
#define colorRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface _UIBarBackground : UIView
@end

@interface UIStatusBar : UIView
@end

@interface CKNavigationBarCanvasView : UIView
@end 

@interface CKAvatarNavigationBar : UIView
@end

@interface CKAvatarPickerViewController : UICollectionView
@end 

@interface CKBrowserSwitcherFooterView : UIView
@end

@interface _UIStatusBarStringView : UIView
@end 

@interface _UIStatusBar : UIView 
@end 

@interface InfoBarWindows : UIWindow
@end

/*@interface CKNavbarCanvasViewController
-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    for (UIWindow *window in self.subviews) {
        if (!window.hidden && window.userInteractionEnabled && [window pointInside:[self convertPoint:point toView:window] withEvent:event])
            return YES;
    }
    return NO;
}
@end*/
//Hook UIButton to open messages and make doubletapping UI do it instead
static UIButton *detailsButton;
%hook CKNavbarCanvasViewController 
-(void)layoutSubviews {
    detailsButton = MSHookIvar<UIButton *>(self, "_detailsButton");
    %orig; 
}
%end

%hook CKMessageEntryContentView
- (void)viewDidLoad {
     UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    tapGesture.numberOfTapsRequired = 2;
    [self addGestureRecognizer:tapGesture];
    [tapGesture release];
    %orig;
}
%new 
- (void)handleTapGesture:(UITapGestureRecognizer *)sender {
    (sender.state == UIGestureRecognizerStateRecognized); {
        [detailsButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
}
%end 


//Changes iMessages name to Contacts Name
static UILabel *contactName;

%hook CKAvatarContactNameCollectionReusableView

-(void)layoutSubviews {
    contactName = MSHookIvar<UILabel *>(self, "_titleLabel");
    %orig;
}

%end

%hook CKMessageEntryContentView

-(void)setPlaceholderText:(NSString *)arg1 {
    if (contactName != nil) {
        %orig(contactName.text);
    } else {
        %orig;
    }
}

%end 
//Hide Avatar in NavigationBar
%hook CKAvatarNavigationBar
-(void)layoutSubviews{
    %orig;
    self.backgroundColor = [UIColor clearColor];
}
%end
//Hide StatusBar on iPhoneX
%hook _UIStatusBar
-(void)layoutSubviews{
    %orig;
    self.hidden = 1;
}
%end
//Also iPhoneX I think
%hook _UIStatusBarStringView
-(void)layoutSubviews{
    %orig;
    self.hidden = 1;
}
%end
//Hiding Navbar
%hook CKNavigationBarCanvasView
-(void)layoutSubviews{
    %orig;
    self.hidden = 1;
}
%end

%hook CKBrowserSwitcherFooterView
-(void)layoutSubviews{
    %orig;
    self.hidden = 1;
}
%end
//Hide status bar non-iPhoneX
%hook UIStatusBar
-(void)layoutSubviews{
    %orig;
    self.alpha = 0;
}
%end
//MakeStatusBar Clear
%hook _UIBarBackground
-(void)layoutSubviews{
    %orig;
    self.alpha = 0;
}
%end
