@interface Dialogs : NSObject
{
}

- (double) native_alert:(char *)message;
- (double) native_confirm:(char *)message;
- (double) native_prompt:(char *)message Arg2:(char *)text;
- (double) native_copiable_prompt:(char *)message Arg2:(char *)text;

@end
