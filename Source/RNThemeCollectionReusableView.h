//
//  RNThemeCollectionReusableView.h
//  Maktar
//
//  Created by Bunny Lin on 2015/9/2.
//

#import <UIKit/UIKit.h>
#import "RNThemeUpdateProtocol.h"

@interface RNThemeCollectionReusableView : UICollectionReusableView
<RNThemeUpdateProtocol>
@property (nonatomic, strong) NSString *backgroundColorKey;

@end
