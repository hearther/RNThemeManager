//
//  RNThemeCollectionViewCell.h
//  Maktar
//
//  Created by Bunny Lin on 2015/9/2.
//

#import <UIKit/UIKit.h>
#import "RNThemeUpdateProtocol.h"

@interface RNThemeCollectionViewCell : UICollectionViewCell
<RNThemeUpdateProtocol>
@property (nonatomic, strong) NSString *backgroundColorKey;
@property (nonatomic, strong) NSString *backgroundColorImageKey;
@end
