//
//  RNThemeLabel.h
//  DT
//
//  Created by Ryan Nystrom on 2/5/13.
//
//

#import <UIKit/UIKit.h>
#import "RNThemeUpdateProtocol.h"

@interface RNThemeLabel : UILabel
<RNThemeUpdateProtocol>

@property (nonatomic, strong) NSString *fontKey;
@property (nonatomic, strong) NSString *textColorKey;
@property (nonatomic, strong) NSString *highlightedTextColorKey;
@property (nonatomic, strong) NSString *backgroundColorKey;

@end
