//
//  GVRocket.h
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import <Foundation/Foundation.h>

@protocol SeldDestructableAirship
- (void)selfDestruct;
@end

@interface GVRocket : NSObject <SeldDestructableAirship>
@property (nonatomic, assign) int fuelTank;
- (id)initWithFuel:(int)quantity;
- (void)blastOff;
- (void)programmableBlastOff:(void (^) (int count))blastOffInstructions;
@end
