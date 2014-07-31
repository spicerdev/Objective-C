//
//  GVMannedRocket.m
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import "GVMannedRocket.h"

@implementation GVMannedRocket
- (id) initWithFuel:(int)quantity pilot:(NSString*)astronaut1
{
    return [self initWithFuel:quantity pilot:astronaut1 copilot:nil];
}
- (id) initWithFuel:(int)quantity pilot:(NSString*)astronaut1 copilot:(NSString*)astronaut2
{
    if (self = [super initWithFuel:quantity]) {
        self.astronaut1 = astronaut1;
        self.astronaut2 = astronaut2;
    }
    return self;
}
- (void)programmableBlastOff:(void (^) (int count))blastOffInstructions
{
    if (self.astronaut1 == nil) {
        NSLog(@"ts how silly...");
        return;
    } else {
        blastOffInstructions(self.fuelTank);
        if(self.astronaut2 != nil) {
            NSLog(@"%@ and %@ are now in orbit", self.astronaut1, self.astronaut2);
        } else {
            NSLog(@"%@ is in orbit", self.astronaut1);
        }
    }
}
@end
