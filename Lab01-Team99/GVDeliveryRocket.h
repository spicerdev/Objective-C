//
//  GVDeliveryRocket.h
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import "GVMannedRocket.h"

@interface GVDeliveryRocket : GVMannedRocket
@property (nonatomic,assign) NSString* cargo;
@property (nonatomic,assign) int deliveryHeight;
- (id) initWithFuel:(int)quantity pilot:(NSString*)astronaut1 copilot:(NSString*)astronaut2 cargo:(NSString*)cargoName deliveryHeight:(int)deliveryHeight;
- (void)programmableBlastOff:(void (^) (int count))blastOffInstructions;
@end
