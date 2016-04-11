//
//  UILabel+DynamicFrame.m
//  EasonLex
//
//  Created by Eason Lin on 2015/12/29.
//

#import "UILabel+DynamicFrame.h"

@implementation UILabel (DynamicFrame)

- (instancetype)initWithDynamicHeight:(CGRect)frame withFont:(UIFont *)font withText:(NSString *)text
{
    self = [super init];
    if (self) {
        [self setFont:font];
        [self setNumberOfLines:0];
        [self setText:text];
        
        NSDictionary *attributes = @{NSFontAttributeName: font};
        
        CGRect descFrame = [text boundingRectWithSize:CGSizeMake(frame.size.width, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
        
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, descFrame.size.width, descFrame.size.height)];
    }
    return self;
}

- (instancetype)initWithDynamicWidth:(CGRect)frame withFont:(UIFont *)font withText:(NSString *)text
{
    self = [super init];
    if (self) {
        [self setFont:font];
        [self setNumberOfLines:0];
        [self setText:text];
        
        NSDictionary *attributes = @{NSFontAttributeName: font};
        
        CGRect descFrame = [text boundingRectWithSize:CGSizeMake(999, frame.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
        
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, descFrame.size.width, descFrame.size.height)];
    }
    return self;
}

@end
