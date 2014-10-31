//
//  UIImage+UIImageAdditions.m
//
//  Created by wwwins on 2014/7/24.
//  Copyright (c) 2014年 isobar. All rights reserved.
//

#import "UIImage+UIImageAdditions.h"

@implementation UIImage (UIImageAdditions)

// https://developer.apple.com/library/ios/qa/qa1817/_index.html#//apple_ref/doc/uid/DTS40014134
+ (UIImage *)snapshot:(UIView *)view
{
  UIGraphicsBeginImageContextWithOptions(view.bounds.size, YES, 0);
  [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:YES];
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return image;
}

// fix the aspect ratio of the image
+ (UIImage *)resizeImage:(UIImage *)image convertToWidth:(float)width
{
  float ratio = image.size.width / width;
  float height = image.size.height / ratio;
  CGSize size = CGSizeMake(width, height);
  //  UIGraphicsBeginImageContext(size);
  UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
  [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
  UIImage * newimage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return newimage;
}

// fix the aspect ratio of the image
+ (UIImage *)resizeImage:(UIImage *)image convertToHeight:(float)height
{
  float ratio = image.size.height / height;
  float width = image.size.width / ratio;
  CGSize size = CGSizeMake(width, height);
  //  UIGraphicsBeginImageContext(size);
  UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
  [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
  UIImage * newimage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return newimage;
  
}

+ (UIImage *)resizeImage:(UIImage *)image imageSize:(CGSize)size
{
  //UIGraphicsBeginImageContext(size);
  UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
  [image drawInRect:CGRectMake(0,0,size.width,size.height)];
  UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return newImage;
}

- (UIImage *)imageWithTintColor:(UIColor *)tintColor
{
  UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(context, 0, self.size.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextSetBlendMode(context, kCGBlendModeNormal);
  CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
  CGContextClipToMask(context, rect, self.CGImage);
  [tintColor setFill];
  CGContextFillRect(context, rect);
  UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return newImage;
}

@end
