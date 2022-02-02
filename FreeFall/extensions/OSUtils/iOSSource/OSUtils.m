#import "OSUtils.h"
#import <StoreKit/StoreKit.h>
#import "sys/utsname.h"

@implementation OSUtils

extern UIViewController *g_controller;

-(void)share:(NSString *)subject withMessage:(NSString *)message {
    NSArray *shareText = @[[subject stringByAppendingString:message]];
    UIActivityViewController *shareViewController = [[UIActivityViewController alloc] initWithActivityItems:shareText applicationActivities:nil];
    
    shareViewController.modalPresentationStyle = UIModalPresentationPopover;
    [g_controller presentViewController:shareViewController animated:YES completion:nil];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        UIPopoverPresentationController *popoverController = [shareViewController popoverPresentationController];
        popoverController.permittedArrowDirections = UIPopoverArrowDirectionDown;
        popoverController.sourceRect = CGRectMake(g_controller.view.frame.size.width / 2, g_controller.view.frame.size.height, 0, 0);
        popoverController.sourceView = g_controller.view;
    }
}

-(void)rateApp {
    if (@available(iOS 10.3, *))
        [SKStoreReviewController requestReview];
    else {
        NSDictionary* infoDictionary = [[NSBundle mainBundle] infoDictionary];
        NSString* appID = infoDictionary[@"CFBundleIdentifier"];
        NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"http://itunes.apple.com/lookup?bundleId=%@", appID]];
        NSData* data = [NSData dataWithContentsOfURL:url];
        if (data == nil) //if no connection then data will be nil
            return;
        NSDictionary* lookup = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSArray *results = lookup[@"results"];
        if (results.count == 0)
            return;
        NSString * appITunesItemIdentifier =  results[0][@"trackId"];
        
        SKStoreProductViewController *storeViewController = [[SKStoreProductViewController alloc] init];
        storeViewController.delegate = self;
        NSDictionary *parameters = @{SKStoreProductParameterITunesItemIdentifier:appITunesItemIdentifier};
        [storeViewController loadProductWithParameters:parameters completionBlock:^(BOOL result, NSError * _Nullable error) {
            if (result)
                [g_controller presentViewController:storeViewController animated:YES completion:nil];
            else
                NSLog(@"SKStoreProductViewController: %@", error);
        }];
    }
}
- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController {
    [viewController dismissViewControllerAnimated:YES completion:nil];
}

-(NSString *)getOSVersion {
    return [[UIDevice currentDevice] systemVersion];
}

-(NSString *)getDeviceName {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

@end
