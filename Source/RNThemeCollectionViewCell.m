//
//  RNThemeCollectionViewCell.m
//  Maktar
//
//  Created by Bunny Lin on 2015/9/2.
//

#import "RNThemeCollectionViewCell.h"
#import "RNThemeManager.h"


@implementation RNThemeCollectionViewCell

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self _init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self _init];
    }
    return self;
}

- (id)init {
    if (self = [super init]) {
        [self _init];
    }
    return self;
}

- (void)_init {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeDidChangeNotification:) name:RNThemeManagerDidChangeThemes object:nil];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self applyTheme];
}

- (void)dealloc {
    @try {
        [[NSNotificationCenter defaultCenter] removeObserver:self];
    }
    @catch (NSException *exception) {
        // do nothing, only unregistering self from notifications
    }
}

- (void)applyTheme {
    UIColor *backgroundColor = nil;
    if (self.backgroundColorKey && (backgroundColor = [[RNThemeManager sharedManager] colorForKey:self.backgroundColorKey])) {
    }
    if (self.backgroundColorImageKey){
        UIImage *tImag = [[RNThemeManager sharedManager] imageForKey:self.backgroundColorImageKey];
        if (tImag){
            backgroundColor = [UIColor colorWithPatternImage:tImag];
        }
    }
    if (backgroundColor){
        self.contentView.backgroundColor = backgroundColor;
    }
    
}

- (void)themeDidChangeNotification:(NSNotification *)notification {
    [self applyTheme];
}

@end
