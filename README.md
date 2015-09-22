WDMessage
=========

Display notifications in the app with several options and simple customisations

![alt text](https://github.com/damienromito/WDMessage/blob/master/picture.png "Display message")


**1 - Import Class**

```objective-c 
#import "WDMessage.h"
```

**2 - Display your message**
```objective-c 
[WDMessage showMessage:@"This is a fucking message"]

```
    
**3 - Add action, change color, change parent View**
```objective-c 
[WDMessage showMessage:@"This is a fucking message" inView:self.view withTopMargin:15. withBackgroundColor:[UIColor blueColor] callback:^{
        //Custom action when tap on message
    }];
                                     
```       


    
