//
//  PlaceholderView.m
//  Memorable
//
//  Created by charls on 2016/11/30.
//  Copyright © 2016年 charls. All rights reserved.
//

#import "PlaceholderView.h"

@implementation PlaceholderView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self registerNotification];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self registerNotification];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self registerNotification];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer {
    self = [super initWithFrame:frame textContainer:textContainer];
    if (self) {
        [self registerNotification];
    }
    return self;
}

- (void)registerNotification {
    [self unregisterNotification];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:nil];
}

- (void)unregisterNotification {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:nil];
}

- (void)dealloc {
    [self unregisterNotification];
}

- (void)textDidChange {
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
    if ([self hasText]) {
        return;
    }
    
    // 设置字体属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionaryWithCapacity:0];
    attrs[NSFontAttributeName] = self.font;
    attrs[NSForegroundColorAttributeName] = self.placeholderColor;
    
    rect.origin.x = 5;
    rect.origin.y = 7;
    rect.size.width -= 2 * rect.origin.x;
    rect.size.height -= 2 * rect.origin.y;
    
    [self.placeholder drawInRect:rect withAttributes:attrs];
    
}

@end
