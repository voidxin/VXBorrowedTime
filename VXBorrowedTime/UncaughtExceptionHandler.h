//
//  UncaughtExceptionHandler.h
//  VXBorrowedTime
//
//  Created by voidxin on 16/10/10.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UncaughtExceptionHandler : NSObject{
    BOOL dismissed;
}

@end
void HandleException(NSException *exception);
void SignalHandler(int signal);


void InstallUncaughtExceptionHandler(void);


