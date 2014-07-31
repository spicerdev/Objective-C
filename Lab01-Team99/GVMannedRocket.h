//
//  GVMannedRocket.h
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import "GVRocket.h"

@interface GVMannedRocket : GVRocket
@property (nonatomic, strong) NSString* astronaut1;
@property (nonatomic, strong) NSString* astronaut2;
- (id) initWithFuel:(int)quantity pilot:(NSString*)astronaut1;
- (id) initWithFuel:(int)quantity pilot:(NSString*)astronaut1 copilot:(NSString*)astronaut2;
- (void)programmableBlastOff:(void (^) (int count))blastOffInstructions;
@end
