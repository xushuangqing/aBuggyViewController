## A buggy demo

I just want to present a landscape view controller from a portait view controller, but sometimes (especially when the main thread is busy) the presented view controller will be misplaced.

Here is a screenshot

![](https://raw.githubusercontent.com/xushuangqing/aBuggyViewController/master/screenshot.jpeg =320x)

However, when I print [UIScreen mainScreen].bounds or [Application sharedApplication].keyWindow or [Application sharedApplication].interfaceOrientation, they are all right.

![](https://raw.githubusercontent.com/xushuangqing/aBuggyViewController/master/debugger.png =640x)

This bug only appears on iOS10.

Run this demo and click the button, the bug will be shown occasionally, about 10%.