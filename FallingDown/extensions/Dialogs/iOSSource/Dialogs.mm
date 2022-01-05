#import "Dialogs.h"

@implementation Dialogs

const int EVENT_OTHER_DIALOG = 63;
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);

static double dialogId = 10000000;

- (double) native_alert:(char *)message
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil message:(message == nil ? @"" : [[NSString stringWithUTF8String:message] stringByReplacingOccurrencesOfString:@"#" withString:@"\n"]) delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    alert.tag = dialogId;
    [alert show];
    [alert release];
    
    dialogId += 1;

    return (double)alert.tag;
}

- (double) native_confirm:(char *)message
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil message:(message == nil ? @"" : [[NSString stringWithUTF8String:message] stringByReplacingOccurrencesOfString:@"#" withString:@"\n"]) delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    alert.tag = dialogId;
    [alert show];
    [alert release];
    
    dialogId += 1;

    return (double)alert.tag;
}

- (double) native_prompt:(char *)message Arg2:(char *)text
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil message:(message == nil ? @"" : [[NSString stringWithUTF8String:message] stringByReplacingOccurrencesOfString:@"#" withString:@"\n"]) delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    alert.tag = dialogId;
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert textFieldAtIndex:0].text = [NSString stringWithUTF8String:text];
    [alert show];
    [alert release];
    
    dialogId += 1;

    return (double)alert.tag;
}

- (double) native_copiable_prompt:(char *)message Arg2:(char *)text
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil message:(message == nil ? @"" : [[NSString stringWithUTF8String:message] stringByReplacingOccurrencesOfString:@"#" withString:@"\n"]) delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Copy", nil];
    alert.tag = dialogId;
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert textFieldAtIndex:0].text = [NSString stringWithUTF8String:text];
    [alert show];
    [alert release];
    
    dialogId += 1;

    return (double)alert.tag;
}

- (void) alertView:(UIAlertView *)alert clickedButtonAtIndex:(NSInteger)buttonIndex
{
    int dsMapIndex;

    if (alert.alertViewStyle == UIAlertViewStylePlainTextInput)
    {
        dsMapIndex = CreateDsMap(3,
            "id", (double)alert.tag, (void *)NULL,
            "status", (double)buttonIndex, (void *)NULL,
            "result", 0.0, [[[alert textFieldAtIndex:0] text] UTF8String]
        );

        if (buttonIndex == 1 && [[alert buttonTitleAtIndex:1] isEqualToString:@"Copy"])
        {
            [[UIPasteboard generalPasteboard] setString:[[alert textFieldAtIndex:0] text]];
        }
    }
    else {
        dsMapIndex = CreateDsMap(2,
            "id", (double)alert.tag, (void *)NULL,
            "status", (double)buttonIndex, (void *)NULL
        );
    }

    CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);
}

@end
