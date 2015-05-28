#import "Notifcations.h"
#import <Cordova/CDV.h>

@implementation Notifactions

- (void)notify:(CDVInvokedUrlCommand*)command
{
  CDVPluginResult* pluginResult = nil;
  NSString* name = [command.arguments objectAtIndex:0];

  UILocalNotification* localNotification = [[UILocalNotificationalloc] init];
  localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:60];
  localNotification.alertBody = @"Your alert message";
  localNotification.timeZone = [NSTimeZone defaultTimeZone];
  [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

  pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:name];

  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
