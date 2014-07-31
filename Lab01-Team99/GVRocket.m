//
//  GVRocket.m
//  Lab01-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 none. All rights reserved.
//
// Team01: Joshua Spicer, Fabio Germann
//

#import "GVRocket.h"

@implementation GVRocket
-(id)initWithFuel:(int)quantity
{
    if(self = [super init])
    {
        self.fuelTank = quantity;
        return self;
    } else {
        return nil;
    }
}
- (void)selfDestruct
{
    NSLog(@"dream on...");
}
- (void)blastOff
{
    for (int i = self.fuelTank; i > 0; i--) {
        NSLog(@"remaining> %d", i);
        sleep(1);
    }
    NSLog(@"blast off");
}
- (void)programmableBlastOff:(void (^) (int count))blastOffInstructions
{
    NSLog(@"activating engines!");
    blastOffInstructions(self.fuelTank);
}
@end
