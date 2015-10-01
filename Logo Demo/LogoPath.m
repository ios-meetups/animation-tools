//
//  LogoPath.m
//  Logo Demo
//
//  Created by George Petrov on 10/1/15.
//  Copyright © 2015 Apps Collider. All rights reserved.
//

#import "LogoPath.h"

@interface LogoPath ()

@property (nonatomic, readonly) NSArray *logoPaths;

- (NSArray *)createLoggoPaths;

@end

@implementation LogoPath

#pragma mark - Initialization

- (instancetype)init {
    self = [super init];
    if (self) {
        _logoPaths = [self createLoggoPaths];
    }
    return self;
}

#pragma mark - Private Methods

- (NSArray *)createLoggoPaths {
    NSMutableArray *paths = [NSMutableArray array];
    
    // A
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(25.09, 23.14)];
    [bezierPath addLineToPoint: CGPointMake(18.58, 8.18)];
    [bezierPath addLineToPoint: CGPointMake(12.08, 23.14)];
    [bezierPath addLineToPoint: CGPointMake(25.09, 23.14)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(0.88, 33.61)];
    [bezierPath addLineToPoint: CGPointMake(14.62, 2.95)];
    [bezierPath addCurveToPoint: CGPointMake(18.53, 0.3) controlPoint1: CGPointMake(15.36, 1.31) controlPoint2: CGPointMake(16.68, 0.3)];
    [bezierPath addLineToPoint: CGPointMake(18.85, 0.3)];
    [bezierPath addCurveToPoint: CGPointMake(22.71, 2.95) controlPoint1: CGPointMake(20.7, 0.3) controlPoint2: CGPointMake(21.97, 1.31)];
    [bezierPath addLineToPoint: CGPointMake(36.45, 33.61)];
    [bezierPath addCurveToPoint: CGPointMake(36.82, 34.98) controlPoint1: CGPointMake(36.72, 34.08) controlPoint2: CGPointMake(36.82, 34.55)];
    [bezierPath addCurveToPoint: CGPointMake(33.75, 38.1) controlPoint1: CGPointMake(36.82, 36.72) controlPoint2: CGPointMake(35.5, 38.1)];
    [bezierPath addCurveToPoint: CGPointMake(30.59, 35.82) controlPoint1: CGPointMake(32.22, 38.1) controlPoint2: CGPointMake(31.16, 37.2)];
    [bezierPath addLineToPoint: CGPointMake(27.57, 28.9)];
    [bezierPath addLineToPoint: CGPointMake(9.6, 28.9)];
    [bezierPath addLineToPoint: CGPointMake(6.48, 36.03)];
    [bezierPath addCurveToPoint: CGPointMake(3.47, 38.1) controlPoint1: CGPointMake(5.95, 37.36) controlPoint2: CGPointMake(4.84, 38.1)];
    [bezierPath addCurveToPoint: CGPointMake(0.45, 35.08) controlPoint1: CGPointMake(1.78, 38.1) controlPoint2: CGPointMake(0.45, 36.77)];
    [bezierPath addCurveToPoint: CGPointMake(0.88, 33.61) controlPoint1: CGPointMake(0.45, 34.61) controlPoint2: CGPointMake(0.61, 34.13)];
    [bezierPath addLineToPoint: CGPointMake(0.88, 33.61)];
    [bezierPath closePath];
    
    [paths addObject:bezierPath];
    
    // p
    UIBezierPath *bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(64, 23.93)];
    [bezier2Path addLineToPoint: CGPointMake(64, 23.82)];
    [bezier2Path addCurveToPoint: CGPointMake(56.02, 14.89) controlPoint1: CGPointMake(64, 18.43) controlPoint2: CGPointMake(60.36, 14.89)];
    [bezier2Path addCurveToPoint: CGPointMake(47.88, 23.82) controlPoint1: CGPointMake(51.69, 14.89) controlPoint2: CGPointMake(47.88, 18.48)];
    [bezier2Path addLineToPoint: CGPointMake(47.88, 23.93)];
    [bezier2Path addCurveToPoint: CGPointMake(56.02, 32.86) controlPoint1: CGPointMake(47.88, 29.27) controlPoint2: CGPointMake(51.69, 32.86)];
    [bezier2Path addCurveToPoint: CGPointMake(64, 23.93) controlPoint1: CGPointMake(60.41, 32.86) controlPoint2: CGPointMake(64, 29.43)];
    [bezier2Path addLineToPoint: CGPointMake(64, 23.93)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(41.65, 12.83)];
    [bezier2Path addCurveToPoint: CGPointMake(44.82, 9.61) controlPoint1: CGPointMake(41.65, 11.03) controlPoint2: CGPointMake(43.02, 9.61)];
    [bezier2Path addCurveToPoint: CGPointMake(48.04, 12.83) controlPoint1: CGPointMake(46.61, 9.61) controlPoint2: CGPointMake(48.04, 11.03)];
    [bezier2Path addLineToPoint: CGPointMake(48.04, 14.58)];
    [bezier2Path addCurveToPoint: CGPointMake(57.55, 9.34) controlPoint1: CGPointMake(50.1, 11.67) controlPoint2: CGPointMake(53.01, 9.34)];
    [bezier2Path addCurveToPoint: CGPointMake(70.51, 23.82) controlPoint1: CGPointMake(64.11, 9.34) controlPoint2: CGPointMake(70.51, 14.52)];
    [bezier2Path addLineToPoint: CGPointMake(70.51, 23.93)];
    [bezier2Path addCurveToPoint: CGPointMake(57.55, 38.41) controlPoint1: CGPointMake(70.51, 33.18) controlPoint2: CGPointMake(64.16, 38.41)];
    [bezier2Path addCurveToPoint: CGPointMake(48.04, 33.5) controlPoint1: CGPointMake(52.9, 38.41) controlPoint2: CGPointMake(50, 36.09)];
    [bezier2Path addLineToPoint: CGPointMake(48.04, 43.38)];
    [bezier2Path addCurveToPoint: CGPointMake(44.82, 46.55) controlPoint1: CGPointMake(48.04, 45.18) controlPoint2: CGPointMake(46.61, 46.55)];
    [bezier2Path addCurveToPoint: CGPointMake(41.65, 43.38) controlPoint1: CGPointMake(43.07, 46.55) controlPoint2: CGPointMake(41.65, 45.18)];
    [bezier2Path addLineToPoint: CGPointMake(41.65, 12.83)];
    [bezier2Path closePath];
    
    [paths addObject:bezier2Path];
    
    // p
    UIBezierPath *bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(98.2, 23.93)];
    [bezier3Path addLineToPoint: CGPointMake(98.2, 23.82)];
    [bezier3Path addCurveToPoint: CGPointMake(90.22, 14.89) controlPoint1: CGPointMake(98.2, 18.43) controlPoint2: CGPointMake(94.55, 14.89)];
    [bezier3Path addCurveToPoint: CGPointMake(82.08, 23.82) controlPoint1: CGPointMake(85.88, 14.89) controlPoint2: CGPointMake(82.08, 18.48)];
    [bezier3Path addLineToPoint: CGPointMake(82.08, 23.93)];
    [bezier3Path addCurveToPoint: CGPointMake(90.22, 32.86) controlPoint1: CGPointMake(82.08, 29.27) controlPoint2: CGPointMake(85.88, 32.86)];
    [bezier3Path addCurveToPoint: CGPointMake(98.2, 23.93) controlPoint1: CGPointMake(94.6, 32.86) controlPoint2: CGPointMake(98.2, 29.43)];
    [bezier3Path addLineToPoint: CGPointMake(98.2, 23.93)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(75.84, 12.83)];
    [bezier3Path addCurveToPoint: CGPointMake(79.02, 9.61) controlPoint1: CGPointMake(75.84, 11.03) controlPoint2: CGPointMake(77.22, 9.61)];
    [bezier3Path addCurveToPoint: CGPointMake(82.24, 12.83) controlPoint1: CGPointMake(80.81, 9.61) controlPoint2: CGPointMake(82.24, 11.03)];
    [bezier3Path addLineToPoint: CGPointMake(82.24, 14.58)];
    [bezier3Path addCurveToPoint: CGPointMake(91.75, 9.34) controlPoint1: CGPointMake(84.3, 11.67) controlPoint2: CGPointMake(87.2, 9.34)];
    [bezier3Path addCurveToPoint: CGPointMake(104.7, 23.82) controlPoint1: CGPointMake(98.31, 9.34) controlPoint2: CGPointMake(104.7, 14.52)];
    [bezier3Path addLineToPoint: CGPointMake(104.7, 23.93)];
    [bezier3Path addCurveToPoint: CGPointMake(91.75, 38.41) controlPoint1: CGPointMake(104.7, 33.18) controlPoint2: CGPointMake(98.36, 38.41)];
    [bezier3Path addCurveToPoint: CGPointMake(82.24, 33.5) controlPoint1: CGPointMake(87.1, 38.41) controlPoint2: CGPointMake(84.19, 36.09)];
    [bezier3Path addLineToPoint: CGPointMake(82.24, 43.38)];
    [bezier3Path addCurveToPoint: CGPointMake(79.02, 46.55) controlPoint1: CGPointMake(82.24, 45.18) controlPoint2: CGPointMake(80.81, 46.55)];
    [bezier3Path addCurveToPoint: CGPointMake(75.84, 43.38) controlPoint1: CGPointMake(77.27, 46.55) controlPoint2: CGPointMake(75.84, 45.18)];
    [bezier3Path addLineToPoint: CGPointMake(75.84, 12.83)];
    [bezier3Path closePath];
    
    [paths addObject:bezier3Path];
    
    // s
    UIBezierPath *bezier4Path = [UIBezierPath bezierPath];
    [bezier4Path moveToPoint: CGPointMake(110.26, 35.03)];
    [bezier4Path addCurveToPoint: CGPointMake(109.04, 32.81) controlPoint1: CGPointMake(109.57, 34.66) controlPoint2: CGPointMake(109.04, 33.87)];
    [bezier4Path addCurveToPoint: CGPointMake(111.63, 30.22) controlPoint1: CGPointMake(109.04, 31.38) controlPoint2: CGPointMake(110.15, 30.22)];
    [bezier4Path addCurveToPoint: CGPointMake(113.01, 30.59) controlPoint1: CGPointMake(112.16, 30.22) controlPoint2: CGPointMake(112.63, 30.38)];
    [bezier4Path addCurveToPoint: CGPointMake(121.04, 33.28) controlPoint1: CGPointMake(115.7, 32.39) controlPoint2: CGPointMake(118.5, 33.28)];
    [bezier4Path addCurveToPoint: CGPointMake(125.37, 30.27) controlPoint1: CGPointMake(123.79, 33.28) controlPoint2: CGPointMake(125.37, 32.12)];
    [bezier4Path addLineToPoint: CGPointMake(125.37, 30.17)];
    [bezier4Path addCurveToPoint: CGPointMake(119.14, 26.26) controlPoint1: CGPointMake(125.37, 28) controlPoint2: CGPointMake(122.41, 27.26)];
    [bezier4Path addCurveToPoint: CGPointMake(110.42, 18.06) controlPoint1: CGPointMake(115.01, 25.09) controlPoint2: CGPointMake(110.42, 23.4)];
    [bezier4Path addLineToPoint: CGPointMake(110.42, 17.96)];
    [bezier4Path addCurveToPoint: CGPointMake(120.35, 9.45) controlPoint1: CGPointMake(110.42, 12.67) controlPoint2: CGPointMake(114.8, 9.45)];
    [bezier4Path addCurveToPoint: CGPointMake(129.12, 11.72) controlPoint1: CGPointMake(123.31, 9.45) controlPoint2: CGPointMake(126.43, 10.29)];
    [bezier4Path addCurveToPoint: CGPointMake(130.66, 14.15) controlPoint1: CGPointMake(130.03, 12.2) controlPoint2: CGPointMake(130.66, 13.04)];
    [bezier4Path addCurveToPoint: CGPointMake(128.02, 16.74) controlPoint1: CGPointMake(130.66, 15.63) controlPoint2: CGPointMake(129.49, 16.74)];
    [bezier4Path addCurveToPoint: CGPointMake(126.75, 16.42) controlPoint1: CGPointMake(127.49, 16.74) controlPoint2: CGPointMake(127.17, 16.64)];
    [bezier4Path addCurveToPoint: CGPointMake(120.19, 14.52) controlPoint1: CGPointMake(124.48, 15.26) controlPoint2: CGPointMake(122.15, 14.52)];
    [bezier4Path addCurveToPoint: CGPointMake(116.28, 17.27) controlPoint1: CGPointMake(117.71, 14.52) controlPoint2: CGPointMake(116.28, 15.69)];
    [bezier4Path addLineToPoint: CGPointMake(116.28, 17.37)];
    [bezier4Path addCurveToPoint: CGPointMake(122.57, 21.34) controlPoint1: CGPointMake(116.28, 19.44) controlPoint2: CGPointMake(119.29, 20.28)];
    [bezier4Path addCurveToPoint: CGPointMake(131.24, 29.48) controlPoint1: CGPointMake(126.64, 22.6) controlPoint2: CGPointMake(131.24, 24.46)];
    [bezier4Path addLineToPoint: CGPointMake(131.24, 29.59)];
    [bezier4Path addCurveToPoint: CGPointMake(120.88, 38.36) controlPoint1: CGPointMake(131.24, 35.45) controlPoint2: CGPointMake(126.7, 38.36)];
    [bezier4Path addCurveToPoint: CGPointMake(110.26, 35.03) controlPoint1: CGPointMake(117.34, 38.36) controlPoint2: CGPointMake(113.48, 37.25)];
    [bezier4Path closePath];
    
    [paths addObject:bezier4Path];
    
    // C
    UIBezierPath *bezier5Path = [UIBezierPath bezierPath];
    [bezier5Path moveToPoint: CGPointMake(1.35, 74.89)];
    [bezier5Path addLineToPoint: CGPointMake(1.35, 74.79)];
    [bezier5Path addCurveToPoint: CGPointMake(20.43, 55.65) controlPoint1: CGPointMake(1.35, 64.27) controlPoint2: CGPointMake(9.23, 55.65)];
    [bezier5Path addCurveToPoint: CGPointMake(33.12, 59.83) controlPoint1: CGPointMake(26.14, 55.65) controlPoint2: CGPointMake(29.89, 57.35)];
    [bezier5Path addCurveToPoint: CGPointMake(34.39, 62.42) controlPoint1: CGPointMake(33.81, 60.36) controlPoint2: CGPointMake(34.39, 61.26)];
    [bezier5Path addCurveToPoint: CGPointMake(31.16, 65.59) controlPoint1: CGPointMake(34.39, 64.22) controlPoint2: CGPointMake(32.96, 65.59)];
    [bezier5Path addCurveToPoint: CGPointMake(29.21, 64.96) controlPoint1: CGPointMake(30.27, 65.59) controlPoint2: CGPointMake(29.63, 65.28)];
    [bezier5Path addCurveToPoint: CGPointMake(20.38, 61.62) controlPoint1: CGPointMake(26.67, 62.9) controlPoint2: CGPointMake(23.93, 61.62)];
    [bezier5Path addCurveToPoint: CGPointMake(8.17, 74.68) controlPoint1: CGPointMake(13.35, 61.62) controlPoint2: CGPointMake(8.17, 67.44)];
    [bezier5Path addLineToPoint: CGPointMake(8.17, 74.79)];
    [bezier5Path addCurveToPoint: CGPointMake(20.38, 87.9) controlPoint1: CGPointMake(8.17, 82.03) controlPoint2: CGPointMake(13.3, 87.9)];
    [bezier5Path addCurveToPoint: CGPointMake(29.63, 84.36) controlPoint1: CGPointMake(24.3, 87.9) controlPoint2: CGPointMake(26.94, 86.63)];
    [bezier5Path addCurveToPoint: CGPointMake(31.59, 83.61) controlPoint1: CGPointMake(30.11, 83.93) controlPoint2: CGPointMake(30.8, 83.61)];
    [bezier5Path addCurveToPoint: CGPointMake(34.65, 86.63) controlPoint1: CGPointMake(33.23, 83.61) controlPoint2: CGPointMake(34.65, 84.99)];
    [bezier5Path addCurveToPoint: CGPointMake(33.6, 88.95) controlPoint1: CGPointMake(34.65, 87.63) controlPoint2: CGPointMake(34.18, 88.42)];
    [bezier5Path addCurveToPoint: CGPointMake(20.17, 93.93) controlPoint1: CGPointMake(30.11, 92.02) controlPoint2: CGPointMake(26.14, 93.93)];
    [bezier5Path addCurveToPoint: CGPointMake(1.35, 74.89) controlPoint1: CGPointMake(9.39, 93.93) controlPoint2: CGPointMake(1.35, 85.52)];
    [bezier5Path closePath];
    
    [paths addObject:bezier5Path];
    
    // o
    UIBezierPath *bezier6Path = [UIBezierPath bezierPath];
    [bezier6Path moveToPoint: CGPointMake(62.57, 79.49)];
    [bezier6Path addLineToPoint: CGPointMake(62.57, 79.39)];
    [bezier6Path addCurveToPoint: CGPointMake(54, 70.4) controlPoint1: CGPointMake(62.57, 74.47) controlPoint2: CGPointMake(59.03, 70.4)];
    [bezier6Path addCurveToPoint: CGPointMake(45.6, 79.28) controlPoint1: CGPointMake(48.88, 70.4) controlPoint2: CGPointMake(45.6, 74.42)];
    [bezier6Path addLineToPoint: CGPointMake(45.6, 79.39)];
    [bezier6Path addCurveToPoint: CGPointMake(54.11, 88.32) controlPoint1: CGPointMake(45.6, 84.26) controlPoint2: CGPointMake(49.15, 88.32)];
    [bezier6Path addCurveToPoint: CGPointMake(62.57, 79.49) controlPoint1: CGPointMake(59.29, 88.32) controlPoint2: CGPointMake(62.57, 84.31)];
    [bezier6Path closePath];
    [bezier6Path moveToPoint: CGPointMake(39.21, 79.49)];
    [bezier6Path addLineToPoint: CGPointMake(39.21, 79.39)];
    [bezier6Path addCurveToPoint: CGPointMake(54.11, 64.8) controlPoint1: CGPointMake(39.21, 71.4) controlPoint2: CGPointMake(45.55, 64.8)];
    [bezier6Path addCurveToPoint: CGPointMake(68.97, 79.28) controlPoint1: CGPointMake(62.67, 64.8) controlPoint2: CGPointMake(68.97, 71.3)];
    [bezier6Path addLineToPoint: CGPointMake(68.97, 79.39)];
    [bezier6Path addCurveToPoint: CGPointMake(54, 93.93) controlPoint1: CGPointMake(68.97, 87.32) controlPoint2: CGPointMake(62.62, 93.93)];
    [bezier6Path addCurveToPoint: CGPointMake(39.21, 79.49) controlPoint1: CGPointMake(45.5, 93.93) controlPoint2: CGPointMake(39.21, 87.42)];
    [bezier6Path closePath];
    
    [paths addObject:bezier6Path];
    
    // l
    UIBezierPath *bezier7Path = [UIBezierPath bezierPath];
    [bezier7Path moveToPoint: CGPointMake(75.84, 57.61)];
    [bezier7Path addCurveToPoint: CGPointMake(79.02, 54.44) controlPoint1: CGPointMake(75.84, 55.87) controlPoint2: CGPointMake(77.22, 54.44)];
    [bezier7Path addCurveToPoint: CGPointMake(82.24, 57.61) controlPoint1: CGPointMake(80.81, 54.44) controlPoint2: CGPointMake(82.24, 55.87)];
    [bezier7Path addLineToPoint: CGPointMake(82.24, 90.38)];
    [bezier7Path addCurveToPoint: CGPointMake(79.02, 93.55) controlPoint1: CGPointMake(82.24, 92.18) controlPoint2: CGPointMake(80.81, 93.55)];
    [bezier7Path addCurveToPoint: CGPointMake(75.84, 90.38) controlPoint1: CGPointMake(77.27, 93.55) controlPoint2: CGPointMake(75.84, 92.18)];
    [bezier7Path addLineToPoint: CGPointMake(75.84, 57.61)];
    [bezier7Path closePath];
    
    [paths addObject:bezier7Path];
    
    // l
    UIBezierPath *bezier8Path = [UIBezierPath bezierPath];
    [bezier8Path moveToPoint: CGPointMake(90.96, 57.61)];
    [bezier8Path addCurveToPoint: CGPointMake(94.13, 54.44) controlPoint1: CGPointMake(90.96, 55.87) controlPoint2: CGPointMake(92.34, 54.44)];
    [bezier8Path addCurveToPoint: CGPointMake(97.36, 57.61) controlPoint1: CGPointMake(95.93, 54.44) controlPoint2: CGPointMake(97.36, 55.87)];
    [bezier8Path addLineToPoint: CGPointMake(97.36, 90.38)];
    [bezier8Path addCurveToPoint: CGPointMake(94.13, 93.55) controlPoint1: CGPointMake(97.36, 92.18) controlPoint2: CGPointMake(95.93, 93.55)];
    [bezier8Path addCurveToPoint: CGPointMake(90.96, 90.38) controlPoint1: CGPointMake(92.39, 93.55) controlPoint2: CGPointMake(90.96, 92.18)];
    [bezier8Path addLineToPoint: CGPointMake(90.96, 57.61)];
    [bezier8Path closePath];
    
    [paths addObject:bezier8Path];
    
    // i
    UIBezierPath *iPath = [UIBezierPath bezierPath];
    
    UIBezierPath *bezier9Path = [UIBezierPath bezierPath];
    [bezier9Path moveToPoint: CGPointMake(106.08, 68.29)];
    [bezier9Path addCurveToPoint: CGPointMake(109.25, 65.06) controlPoint1: CGPointMake(106.08, 66.49) controlPoint2: CGPointMake(107.45, 65.06)];
    [bezier9Path addCurveToPoint: CGPointMake(112.48, 68.29) controlPoint1: CGPointMake(111.05, 65.06) controlPoint2: CGPointMake(112.48, 66.49)];
    [bezier9Path addLineToPoint: CGPointMake(112.48, 90.38)];
    [bezier9Path addCurveToPoint: CGPointMake(109.25, 93.55) controlPoint1: CGPointMake(112.48, 92.18) controlPoint2: CGPointMake(111.05, 93.55)];
    [bezier9Path addCurveToPoint: CGPointMake(106.08, 90.38) controlPoint1: CGPointMake(107.51, 93.55) controlPoint2: CGPointMake(106.08, 92.18)];
    [bezier9Path addLineToPoint: CGPointMake(106.08, 68.29)];
    [bezier9Path closePath];
    
    [iPath appendPath:bezier9Path];
    
    UIBezierPath *bezier13Path = [UIBezierPath bezierPath];
    [bezier13Path moveToPoint: CGPointMake(112.48, 57.62)];
    [bezier13Path addCurveToPoint: CGPointMake(109.3, 60.79) controlPoint1: CGPointMake(112.48, 59.37) controlPoint2: CGPointMake(111.05, 60.79)];
    [bezier13Path addCurveToPoint: CGPointMake(106.13, 57.62) controlPoint1: CGPointMake(107.55, 60.79) controlPoint2: CGPointMake(106.13, 59.37)];
    [bezier13Path addCurveToPoint: CGPointMake(109.3, 54.44) controlPoint1: CGPointMake(106.13, 55.86) controlPoint2: CGPointMake(107.55, 54.44)];
    [bezier13Path addCurveToPoint: CGPointMake(112.48, 57.62) controlPoint1: CGPointMake(111.05, 54.44) controlPoint2: CGPointMake(112.48, 55.86)];
    [bezier13Path closePath];
    
    [iPath appendPath:bezier13Path];
    
    [paths addObject:iPath];
    
    // d
    UIBezierPath *bezier10Path = [UIBezierPath bezierPath];
    [bezier10Path moveToPoint: CGPointMake(125.85, 79.28)];
    [bezier10Path addLineToPoint: CGPointMake(125.85, 79.39)];
    [bezier10Path addCurveToPoint: CGPointMake(133.89, 88.32) controlPoint1: CGPointMake(125.85, 84.78) controlPoint2: CGPointMake(129.55, 88.32)];
    [bezier10Path addCurveToPoint: CGPointMake(141.97, 79.39) controlPoint1: CGPointMake(138.17, 88.32) controlPoint2: CGPointMake(141.97, 84.72)];
    [bezier10Path addLineToPoint: CGPointMake(141.97, 79.28)];
    [bezier10Path addCurveToPoint: CGPointMake(133.89, 70.35) controlPoint1: CGPointMake(141.97, 73.89) controlPoint2: CGPointMake(138.17, 70.35)];
    [bezier10Path addCurveToPoint: CGPointMake(125.85, 79.28) controlPoint1: CGPointMake(129.5, 70.35) controlPoint2: CGPointMake(125.85, 73.73)];
    [bezier10Path addLineToPoint: CGPointMake(125.85, 79.28)];
    [bezier10Path closePath];
    [bezier10Path moveToPoint: CGPointMake(148.26, 90.38)];
    [bezier10Path addCurveToPoint: CGPointMake(145.09, 93.55) controlPoint1: CGPointMake(148.26, 92.18) controlPoint2: CGPointMake(146.84, 93.55)];
    [bezier10Path addCurveToPoint: CGPointMake(141.87, 90.38) controlPoint1: CGPointMake(143.3, 93.55) controlPoint2: CGPointMake(141.87, 92.18)];
    [bezier10Path addLineToPoint: CGPointMake(141.87, 88.64)];
    [bezier10Path addCurveToPoint: CGPointMake(132.35, 93.88) controlPoint1: CGPointMake(139.81, 91.55) controlPoint2: CGPointMake(136.9, 93.88)];
    [bezier10Path addCurveToPoint: CGPointMake(119.4, 79.39) controlPoint1: CGPointMake(125.8, 93.88) controlPoint2: CGPointMake(119.4, 88.64)];
    [bezier10Path addLineToPoint: CGPointMake(119.4, 79.28)];
    [bezier10Path addCurveToPoint: CGPointMake(132.35, 64.8) controlPoint1: CGPointMake(119.4, 70.03) controlPoint2: CGPointMake(125.69, 64.8)];
    [bezier10Path addCurveToPoint: CGPointMake(141.87, 69.72) controlPoint1: CGPointMake(136.96, 64.8) controlPoint2: CGPointMake(139.86, 67.07)];
    [bezier10Path addLineToPoint: CGPointMake(141.87, 57.61)];
    [bezier10Path addCurveToPoint: CGPointMake(145.04, 54.44) controlPoint1: CGPointMake(141.87, 55.81) controlPoint2: CGPointMake(143.3, 54.44)];
    [bezier10Path addCurveToPoint: CGPointMake(148.26, 57.61) controlPoint1: CGPointMake(146.84, 54.44) controlPoint2: CGPointMake(148.26, 55.81)];
    [bezier10Path addLineToPoint: CGPointMake(148.26, 90.38)];
    [bezier10Path closePath];
    
    [paths addObject:bezier10Path];
    
    // e
    UIBezierPath *bezier11Path = [UIBezierPath bezierPath];
    [bezier11Path moveToPoint: CGPointMake(174.93, 77.38)];
    [bezier11Path addCurveToPoint: CGPointMake(167.85, 70.03) controlPoint1: CGPointMake(174.51, 73.26) controlPoint2: CGPointMake(172.08, 70.03)];
    [bezier11Path addCurveToPoint: CGPointMake(160.61, 77.38) controlPoint1: CGPointMake(163.94, 70.03) controlPoint2: CGPointMake(161.19, 73.05)];
    [bezier11Path addLineToPoint: CGPointMake(174.93, 77.38)];
    [bezier11Path closePath];
    [bezier11Path moveToPoint: CGPointMake(168.59, 93.93)];
    [bezier11Path addCurveToPoint: CGPointMake(154.26, 79.44) controlPoint1: CGPointMake(160.5, 93.93) controlPoint2: CGPointMake(154.26, 88.06)];
    [bezier11Path addLineToPoint: CGPointMake(154.26, 79.34)];
    [bezier11Path addCurveToPoint: CGPointMake(167.9, 64.8) controlPoint1: CGPointMake(154.26, 71.35) controlPoint2: CGPointMake(159.92, 64.8)];
    [bezier11Path addCurveToPoint: CGPointMake(181.17, 78.54) controlPoint1: CGPointMake(176.78, 64.8) controlPoint2: CGPointMake(181.17, 72.09)];
    [bezier11Path addCurveToPoint: CGPointMake(178.15, 81.6) controlPoint1: CGPointMake(181.17, 80.33) controlPoint2: CGPointMake(179.79, 81.6)];
    [bezier11Path addLineToPoint: CGPointMake(160.66, 81.6)];
    [bezier11Path addCurveToPoint: CGPointMake(168.7, 88.69) controlPoint1: CGPointMake(161.34, 86.15) controlPoint2: CGPointMake(164.57, 88.69)];
    [bezier11Path addCurveToPoint: CGPointMake(175.3, 86.26) controlPoint1: CGPointMake(171.39, 88.69) controlPoint2: CGPointMake(173.51, 87.74)];
    [bezier11Path addCurveToPoint: CGPointMake(176.94, 85.67) controlPoint1: CGPointMake(175.78, 85.89) controlPoint2: CGPointMake(176.2, 85.67)];
    [bezier11Path addCurveToPoint: CGPointMake(179.48, 88.26) controlPoint1: CGPointMake(178.37, 85.67) controlPoint2: CGPointMake(179.48, 86.79)];
    [bezier11Path addCurveToPoint: CGPointMake(178.63, 90.22) controlPoint1: CGPointMake(179.48, 89.06) controlPoint2: CGPointMake(179.11, 89.75)];
    [bezier11Path addCurveToPoint: CGPointMake(168.59, 93.93) controlPoint1: CGPointMake(176.09, 92.5) controlPoint2: CGPointMake(172.92, 93.93)];
    [bezier11Path addLineToPoint: CGPointMake(168.59, 93.93)];
    [bezier11Path closePath];
    
    [paths addObject:bezier11Path];
    
    // r
    UIBezierPath *bezier12Path = [UIBezierPath bezierPath];
    [bezier12Path moveToPoint: CGPointMake(187.22, 68.29)];
    [bezier12Path addCurveToPoint: CGPointMake(190.39, 65.06) controlPoint1: CGPointMake(187.22, 66.49) controlPoint2: CGPointMake(188.59, 65.06)];
    [bezier12Path addCurveToPoint: CGPointMake(193.62, 68.29) controlPoint1: CGPointMake(192.19, 65.06) controlPoint2: CGPointMake(193.62, 66.49)];
    [bezier12Path addLineToPoint: CGPointMake(193.62, 71.14)];
    [bezier12Path addCurveToPoint: CGPointMake(200.64, 65.01) controlPoint1: CGPointMake(195.1, 67.65) controlPoint2: CGPointMake(197.84, 65.01)];
    [bezier12Path addCurveToPoint: CGPointMake(203.81, 68.18) controlPoint1: CGPointMake(202.66, 65.01) controlPoint2: CGPointMake(203.81, 66.33)];
    [bezier12Path addCurveToPoint: CGPointMake(201.28, 71.25) controlPoint1: CGPointMake(203.81, 69.88) controlPoint2: CGPointMake(202.7, 70.99)];
    [bezier12Path addCurveToPoint: CGPointMake(193.62, 82.13) controlPoint1: CGPointMake(196.73, 72.04) controlPoint2: CGPointMake(193.62, 75.53)];
    [bezier12Path addLineToPoint: CGPointMake(193.62, 90.38)];
    [bezier12Path addCurveToPoint: CGPointMake(190.39, 93.55) controlPoint1: CGPointMake(193.62, 92.13) controlPoint2: CGPointMake(192.19, 93.55)];
    [bezier12Path addCurveToPoint: CGPointMake(187.22, 90.38) controlPoint1: CGPointMake(188.65, 93.55) controlPoint2: CGPointMake(187.22, 92.18)];
    [bezier12Path addLineToPoint: CGPointMake(187.22, 68.29)];
    [bezier12Path closePath];
    
    [paths addObject:bezier12Path];
    
    return [NSArray arrayWithArray:paths];
}

#pragma mark - Public Methods

- (UIBezierPath *)logoLetterPathAtIndex:(NSInteger)index inRect:(CGRect)rect {
    UIBezierPath *letterPath = nil;
    
    if ([_logoPaths count] > index)
    {
        letterPath = [_logoPaths objectAtIndex:index];
        
        CGFloat baseWidth = 204.0;
        CGFloat baseHeight = 94.0;
        
        CGFloat wScale = rect.size.width / baseWidth;
        CGFloat hScale = rect.size.height / baseHeight;
        
        [letterPath applyTransform:CGAffineTransformMakeScale(wScale, hScale)];
    }
    
    return letterPath;
}

#pragma mark - Properties

- (NSInteger)lettersCount {
    return [_logoPaths count];
}

@end
