## A buggy demo

I just want to present a landscape view controller from a portait view controller, but sometimes (especially when the main thread is busy) the presented view controller will be misplaced.

Here is a screenshot

![](http://upload-images.jianshu.io/upload_images/164542-430242e4aac5d800.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 =320x)

However, when I print [UIScreen mainScreen].bounds or [Application sharedApplication].keyWindow or [Application sharedApplication].interfaceOrientation, they are all right.

![](http://upload-images.jianshu.io/upload_images/164542-824c655ea5be0d3e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 =640x)

This bug only appears on iOS10.

Run this demo and click the button, the bug will be shown occasionally, about 10%.