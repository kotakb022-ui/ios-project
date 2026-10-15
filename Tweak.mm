#import <substrate.h>
#import <UIKit/UIKit.h>

%ctor {
    NSLog(@"[Tweak] Библиотека успешно загружена!");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_page(), ^{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Твик активирован"
                                                        message:@"Инъекция прошла успешно"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    });
}
