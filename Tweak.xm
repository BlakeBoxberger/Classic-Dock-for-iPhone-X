@interface SBDockView : UIView
@end

@interface SBWallpaperEffectView : UIView
@end

%hook SBDockView

- (void)_updateCornerRadii {
	SBWallpaperEffectView *backgroundView = MSHookIvar<SBWallpaperEffectView *>(self, "_backgroundView");
	backgroundView.transform = CGAffineTransformTranslate(CGAffineTransformMakeScale(1.06, 1.15), 0.0, 6.0);
}

%end
