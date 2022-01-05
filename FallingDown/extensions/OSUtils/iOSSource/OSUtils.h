@interface OSUtils : NSObject

-(void)share:(NSString *) subject withMessage:(NSString *) message;
-(void)rateApp;
-(NSString *)getOSVersion;
-(NSString *)getDeviceName;

@end
