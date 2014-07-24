//
//  UIImage+UIImageAdditions.m
//  MyLayoutViewDemo
//
//  Created by wwwins on 2014/7/24.
//  Copyright (c) 2014年 isobar. All rights reserved.
//

#import "UIImage+UIImageAdditions.h"

@implementation UIImage (UIImageAdditions)

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

@end
