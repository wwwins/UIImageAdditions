//
//  UIImage+UIImageAdditions.h
//  MyLayoutViewDemo
//
//  Created by wwwins on 2014/7/24.
//  Copyright (c) 2014年 isobar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImageAdditions)

+ (UIImage *)resizeImage:(UIImage *)image convertToWidth:(float)width;
+ (UIImage *)resizeImage:(UIImage *)image convertToHeight:(float)height;
+ (UIImage *)resizeImage:(UIImage *)image imageSize:(CGSize)size;


@end
