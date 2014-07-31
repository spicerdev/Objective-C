//
//  GVDeliveryRocket.m
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import "GVDeliveryRocket.h"

@implementation GVDeliveryRocket
- (id) initWithFuel:(int)quantity pilot:(NSString*)astronaut1 copilot:(NSString*)astronaut2 cargo:(NSString*)cargoName deliveryHeight:(int)deliveryHeight
{
    if (self = [super initWithFuel:quantity pilot:astronaut1 copilot:astronaut2]) {
        self.cargo = cargoName;
        self.deliveryHeight = deliveryHeight;
    }
    NSLog(@"mission: deliver %@ at %d Mfeet", self.cargo, self.deliveryHeight);

    return self;
}
- (void)programmableBlastOff:(void (^) (int count))blastOffInstructions
{
    blastOffInstructions(self.fuelTank);
}

@end
