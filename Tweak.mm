#import <substrate.h> #import <UIKit/UIKit.h>
%ctor { NSLog(@"[Tweak] Библиотека успешно загружена!");
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Твик активен" 
                                                    message:@"Инъекция прошла успешно" 
                                                   delegate:nil 
                                          cancelButtonTitle:@"ОК" 
                                          otherButtonTitles:nil];
    [alert show];
});
}
