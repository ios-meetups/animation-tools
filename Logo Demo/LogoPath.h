//
//  LogoPath.h
//  Logo Demo
//
//  Created by George Petrov on 10/1/15.
//  Copyright © 2015 Apps Collider. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LogoPath : NSObject

@property (nonatomic, readonly, assign) NSInteger lettersCount;

- (UIBezierPath *)logoLetterPathAtIndex:(NSInteger)index inRect:(CGRect)rect;

@end
