//
//  main.m
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import <Cocoa/Cocoa.h>
#import "GVAppDelegate.h"
#import "GVRocket.h"
#import "GVMannedRocket.h"
#import "GVDeliveryRocket.h"

int main(int argc, const char * argv[])
{
    GVDeliveryRocket* drocket = [[GVDeliveryRocket alloc]initWithFuel:10 pilot:@"bob" copilot:@"aice" cargo: @"pizza" deliveryHeight:7];
    
    [drocket programmableBlastOff:^(int count) {
        // our code
        for (int i = drocket.fuelTank; i > 0; i--) {
            NSLog(@"remaining> %d", i);
            sleep(1);
        }
        NSLog(@"blast off > the mission has begun");
        for (int height = 0; height < 50; height++) {
            if (height == drocket.deliveryHeight) {
                NSLog(@"delivering %@", drocket.cargo);
                return;
            } else {
                NSLog(@"wait for it...");
            }
        }
    }];
    
    return NSApplicationMain(argc, argv);
}
