//
//  LogoView.m
//  Logo Demo
//
//  Created by George Petrov on 10/1/15.
//  Copyright © 2015 Apps Collider. All rights reserved.
//

#import "LogoView.h"
#import "LogoPath.h"

static NSString * const kLogoLetterIsSubviewKey = @"kLogoLetterIsSubviewKey";

@interface LogoView ()
{
    NSMutableArray *_letterLayers;
    LogoPath *_logoPath;
}

- (void)layoutLogoLayersInView:(UIView *)view;

- (CAShapeLayer *)letterLayerWithPathIndex:(NSInteger)index;

@end

@implementation LogoView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _logoPath = [[LogoPath alloc] init];
        _letterLayers = [[NSMutableArray alloc] init];
        [self setNeedsUpdateConstraints];
    }
    return self;
}

#pragma mark - Override

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self layoutLogoLayersInView:self];
    
    [super layoutSubviews];
}

#pragma mark - Private Methods

- (void)layoutLogoLayersInView:(UIView *)view {
    for (int i = 0; i < _logoPath.lettersCount; i++)
    {
        CAShapeLayer *letterLayer = [self letterLayerWithPathIndex:i];
        
        if (![[letterLayer valueForKey:kLogoLetterIsSubviewKey] boolValue])
        {
            [[view layer] addSublayer:letterLayer];
        }
        
        UIBezierPath *letterPath = [_logoPath logoLetterPathAtIndex:i inRect:view.bounds];
        CGRect letterFrame = [letterPath bounds];
        CGAffineTransform transform = CGAffineTransformMakeTranslation(letterFrame.origin.x * -1, letterFrame.origin.y * -1);
        [letterPath applyTransform:transform];
        [letterLayer setPath:letterPath.CGPath];
        
        if (!CGRectEqualToRect(letterLayer.frame, letterFrame)) [letterLayer setFrame:letterFrame];
    }
}

- (CAShapeLayer *)letterLayerWithPathIndex:(NSInteger)index {
    CAShapeLayer *letterLayer = nil;
    
    if ([_letterLayers count] > index)
    {
        letterLayer = [_letterLayers objectAtIndex:index];
        [letterLayer setValue:[NSNumber numberWithBool:YES] forKey:kLogoLetterIsSubviewKey];
    }
    else
    {
        CGColorRef clearColor = [UIColor colorWithWhite:1 alpha:0].CGColor;
        CGColorRef blackColor = [UIColor colorWithWhite:0 alpha:1].CGColor;
        
        letterLayer = [CAShapeLayer layer];
        [letterLayer setFillColor:clearColor];
        [letterLayer setStrokeColor:blackColor];
        [letterLayer setLineWidth:1];
        [letterLayer setStrokeStart:0];
        [letterLayer setStrokeEnd:0];
        [letterLayer setLineJoin:kCALineJoinRound];
        [letterLayer setLineCap:kCALineCapRound];
        [letterLayer setFillRule:kCAFillRuleEvenOdd];
        [letterLayer setFillMode:kCAFillModeBoth];
        [letterLayer setValue:[NSNumber numberWithBool:NO] forKey:kLogoLetterIsSubviewKey];
        
        [_letterLayers addObject:letterLayer];
    }
    
    return letterLayer;
}

#pragma mark - Public Methods

- (void)animateLogo {
    NSTimeInterval letterAnimationDuration = 5.25 * 3;
    NSTimeInterval fillAnimationDuration = 1.85;
    NSTimeInterval delay = 1;
    NSTimeInterval letterDelay = 0.21;
    
    CAMediaTimingFunction *strokeTimingFunction = [CAMediaTimingFunction functionWithControlPoints:0.20 :0.99 :0.48 :1.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.27 :0.97 :0.74 :1.00]; this
    //[CAMediaTimingFunction functionWithControlPoints:0.00 :1.00 :0.42 :1.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.73 :0.00 :1.00 :0.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.67 :0.00 :1.00 :0.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.89 :0.00 :1.00 :0.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.17 :0.52 :1.00 :0.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.09 :0.86 :0.22 :0.97];
    
    CAMediaTimingFunction *colorTimingFunction = [CAMediaTimingFunction functionWithControlPoints:1.00 :0.00 :0.82 :1.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.73 :0.00 :1.00 :0.00];
    //[CAMediaTimingFunction functionWithControlPoints:1.00 :0.00 :1.00 :1.00];
    //[CAMediaTimingFunction functionWithControlPoints:1.00 :0.00 :1.00 :0.36];
    //[CAMediaTimingFunction functionWithControlPoints:0.00 :1.00 :0.81 :1.00];
    //[CAMediaTimingFunction functionWithControlPoints:0.73 :0.00 :1.00 :0.00];
    
    CGColorRef initialColor = [UIColor colorWithWhite:1 alpha:0].CGColor;
    
    CGColorRef (^FillColorForIndex)(NSInteger) = ^CGColorRef (NSInteger index) {
        CGColorRef colorRef = NULL;
        if (index < 4)
        {
            colorRef = [UIColor colorWithRed:0.082 green:0.629 blue:0.415 alpha:1].CGColor;
        }
        else
        {
            colorRef = [UIColor colorWithRed:0.318 green:0.099 blue:0.491 alpha:1].CGColor;
        }
        
        return colorRef;
    };
    
    for (int i = 0; i < _logoPath.lettersCount; i++)
    {
        NSString *animationKey = [NSString stringWithFormat:@"letterAnimation%i", i];
        
        CAShapeLayer *letterLayer = [_letterLayers objectAtIndex:i];
        [letterLayer removeAnimationForKey:animationKey];
        
        CGColorRef targetFillColor = FillColorForIndex(i);
        
        CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        [animationGroup setDuration:letterAnimationDuration + fillAnimationDuration];
        [animationGroup setBeginTime:CACurrentMediaTime() + delay + (letterDelay * i)];
        [animationGroup setTimingFunction:strokeTimingFunction];
        [animationGroup setRemovedOnCompletion:NO];
        [animationGroup setFillMode:kCAFillModeBoth];
        
        CABasicAnimation *strokeAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        [strokeAnimation setDuration:letterAnimationDuration];
        [strokeAnimation setTimingFunction:strokeTimingFunction];
        [strokeAnimation setFromValue:[NSNumber numberWithFloat:0]];
        [strokeAnimation setToValue:[NSNumber numberWithFloat:1]];
        [strokeAnimation setFillMode:kCAFillModeBoth];
        [strokeAnimation setDelegate:self];
        [strokeAnimation setRemovedOnCompletion:NO];
        
        CABasicAnimation *fillAnimation = [CABasicAnimation animationWithKeyPath:@"fillColor"];
        [fillAnimation setDuration:fillAnimationDuration];
        [fillAnimation setTimingFunction:colorTimingFunction];
        [fillAnimation setBeginTime:strokeAnimation.beginTime + letterAnimationDuration/1.4];
        [fillAnimation setFromValue:(__bridge id)initialColor];
        [fillAnimation setToValue:(__bridge id)targetFillColor];
        [fillAnimation setFillMode:kCAFillModeForwards];
//        [fillAnimation setAutoreverses:YES];
        [fillAnimation setRemovedOnCompletion:NO];
        
        [animationGroup setAnimations:@[strokeAnimation, fillAnimation]];
        
        [letterLayer addAnimation:animationGroup forKey:animationKey];
    }
    
}

@end
