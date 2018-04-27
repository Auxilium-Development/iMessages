#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import "Common/DDTMCommon.h"
#import "Headers/UIBackgroundStyle.h"
#import "Headers/SMSHeaders.h"
#import "Headers/SMSCategories.h"
#define colorRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]






































#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CKMessageEntryContentView; @class _UIBarBackground; @class CKNavigationBarCanvasView; @class CKAvatarNavigationBar; @class CKAvatarContactNameCollectionReusableView; @class _UIStatusBar; @class CKBrowserSwitcherFooterView; @class CKNavbarCanvasViewController; @class _UIStatusBarStringView; 
static void (*_logos_orig$_ungrouped$CKNavbarCanvasViewController$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CKNavbarCanvasViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKNavbarCanvasViewController$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKNavbarCanvasViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKMessageEntryContentView$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKMessageEntryContentView$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKMessageEntryContentView$handleTapGesture$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, UITapGestureRecognizer *); static void (*_logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, NSString *); static void _logos_method$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST, SEL, NSString *); static void (*_logos_orig$_ungrouped$CKAvatarContactNameCollectionReusableView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CKAvatarContactNameCollectionReusableView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKAvatarContactNameCollectionReusableView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKAvatarContactNameCollectionReusableView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKAvatarNavigationBar$_commonNavBarInit)(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKAvatarNavigationBar$_commonNavBarInit(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIStatusBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKNavigationBarCanvasView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKNavigationBarCanvasView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKBrowserSwitcherFooterView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CKBrowserSwitcherFooterView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKBrowserSwitcherFooterView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKBrowserSwitcherFooterView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIBarBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL); 

#line 45 "Tweak.xm"
static UIButton *detailsButton;

static void _logos_method$_ungrouped$CKNavbarCanvasViewController$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKNavbarCanvasViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    detailsButton = MSHookIvar<UIButton *>(self, "_detailsButton");
    _logos_orig$_ungrouped$CKNavbarCanvasViewController$layoutSubviews(self, _cmd);
}



static void _logos_method$_ungrouped$CKMessageEntryContentView$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    tapGesture.numberOfTapsRequired = 2;
    [self addGestureRecognizer:tapGesture];
    [tapGesture release];
    _logos_orig$_ungrouped$CKMessageEntryContentView$viewDidLoad(self, _cmd);
}

static void _logos_method$_ungrouped$CKMessageEntryContentView$handleTapGesture$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITapGestureRecognizer * sender) {
    if (sender.state == UIGestureRecognizerStateRecognized); {
        [detailsButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
}




static UILabel *contactName;



static void _logos_method$_ungrouped$CKAvatarContactNameCollectionReusableView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKAvatarContactNameCollectionReusableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    contactName = MSHookIvar<UILabel *>(self, "_titleLabel");
    _logos_orig$_ungrouped$CKAvatarContactNameCollectionReusableView$layoutSubviews(self, _cmd);
}





static void _logos_method$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * arg1) {
    if (contactName != nil) {
        _logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(self, _cmd, contactName.text);
    } else {
        _logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$(self, _cmd, arg1);
    }
}








static void _logos_method$_ungrouped$CKAvatarNavigationBar$_commonNavBarInit(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$CKAvatarNavigationBar$_commonNavBarInit(self, _cmd);
    _UIBarBackground *barBackgroundView = MSHookIvar<_UIBarBackground *>(self, "_barBackgroundView");
    [barBackgroundView setDDIsInAvatarNavigationBar:YES];
}




static void _logos_method$_ungrouped$_UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$_UIStatusBar$layoutSubviews(self, _cmd);
    self.hidden = 1;
}



static void _logos_method$_ungrouped$_UIStatusBarStringView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarStringView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews(self, _cmd);
    self.hidden = 1;
}



static void _logos_method$_ungrouped$CKNavigationBarCanvasView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$CKNavigationBarCanvasView$layoutSubviews(self, _cmd);
    self.hidden = 1;
}



static void _logos_method$_ungrouped$CKBrowserSwitcherFooterView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKBrowserSwitcherFooterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$CKBrowserSwitcherFooterView$layoutSubviews(self, _cmd);
    self.hidden = 1;
}










static void _logos_method$_ungrouped$_UIBarBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$_UIBarBackground$layoutSubviews(self, _cmd);
    self.alpha = 0;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKNavbarCanvasViewController = objc_getClass("CKNavbarCanvasViewController"); MSHookMessageEx(_logos_class$_ungrouped$CKNavbarCanvasViewController, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$CKNavbarCanvasViewController$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$CKNavbarCanvasViewController$layoutSubviews);Class _logos_class$_ungrouped$CKMessageEntryContentView = objc_getClass("CKMessageEntryContentView"); MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryContentView, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$CKMessageEntryContentView$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryContentView$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITapGestureRecognizer *), strlen(@encode(UITapGestureRecognizer *))); i += strlen(@encode(UITapGestureRecognizer *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$CKMessageEntryContentView, @selector(handleTapGesture:), (IMP)&_logos_method$_ungrouped$CKMessageEntryContentView$handleTapGesture$, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryContentView, @selector(setPlaceholderText:), (IMP)&_logos_method$_ungrouped$CKMessageEntryContentView$setPlaceholderText$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryContentView$setPlaceholderText$);Class _logos_class$_ungrouped$CKAvatarContactNameCollectionReusableView = objc_getClass("CKAvatarContactNameCollectionReusableView"); MSHookMessageEx(_logos_class$_ungrouped$CKAvatarContactNameCollectionReusableView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$CKAvatarContactNameCollectionReusableView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$CKAvatarContactNameCollectionReusableView$layoutSubviews);Class _logos_class$_ungrouped$CKAvatarNavigationBar = objc_getClass("CKAvatarNavigationBar"); MSHookMessageEx(_logos_class$_ungrouped$CKAvatarNavigationBar, @selector(_commonNavBarInit), (IMP)&_logos_method$_ungrouped$CKAvatarNavigationBar$_commonNavBarInit, (IMP*)&_logos_orig$_ungrouped$CKAvatarNavigationBar$_commonNavBarInit);Class _logos_class$_ungrouped$_UIStatusBar = objc_getClass("_UIStatusBar"); MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIStatusBar$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$_UIStatusBar$layoutSubviews);Class _logos_class$_ungrouped$_UIStatusBarStringView = objc_getClass("_UIStatusBarStringView"); MSHookMessageEx(_logos_class$_ungrouped$_UIStatusBarStringView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIStatusBarStringView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$_UIStatusBarStringView$layoutSubviews);Class _logos_class$_ungrouped$CKNavigationBarCanvasView = objc_getClass("CKNavigationBarCanvasView"); MSHookMessageEx(_logos_class$_ungrouped$CKNavigationBarCanvasView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$CKNavigationBarCanvasView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$CKNavigationBarCanvasView$layoutSubviews);Class _logos_class$_ungrouped$CKBrowserSwitcherFooterView = objc_getClass("CKBrowserSwitcherFooterView"); MSHookMessageEx(_logos_class$_ungrouped$CKBrowserSwitcherFooterView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$CKBrowserSwitcherFooterView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$CKBrowserSwitcherFooterView$layoutSubviews);Class _logos_class$_ungrouped$_UIBarBackground = objc_getClass("_UIBarBackground"); MSHookMessageEx(_logos_class$_ungrouped$_UIBarBackground, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIBarBackground$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews);} }
#line 148 "Tweak.xm"
