//
//  UILabel+DynamicFrame.h
//  EasonLex
//
//  Created by Eason Lin on 2015/12/29.
//

#import <UIKit/UIKit.h>

@interface UILabel (DynamicFrame)
- (instancetype)initWithDynamicHeight:(CGRect)frame withFont:(UIFont *)font withText:(NSString *)text;
- (instancetype)initWithDynamicWidth:(CGRect)frame withFont:(UIFont *)font withText:(NSString *)text;
@end
