UIImageAdditions
================

## Install
Simplay add UIImageAdditions to your project.

## Usage
```objc
// adjust the width of image.
UIImage *resizeImage = [UIImage resizeImage:[cache imageFromDiskCacheForKey:[item.picUrl absoluteString]] convertToWidth:300];

// generate a tinted unselected image.
for(UITabBarItem *item in self.tabBarController.tabBar.items) {
  item.image = [[item.selectedImage imageWithTintColor:[UIColor colorWithRed:0.400 green:0.000 blue:0.000 alpha:1.000]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

// take a snapshot
UIImage *snapshotImage = [UIImage snapshot:self.view];
```
