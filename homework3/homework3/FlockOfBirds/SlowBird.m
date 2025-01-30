//
//  SlowBird.m
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import "SlowBird.h"

@implementation SlowBird

- (instancetype) initWithName:(NSString *)birdName  {
    self = [super initWithName: birdName];
    if (self) {
        self.birtType = @"SlowBird";
    }
    return self;
}

@end
