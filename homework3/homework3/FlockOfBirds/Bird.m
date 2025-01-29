//
//  Bird.m
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import "Bird.h"

@implementation Bird


- (void)eat {
    NSLog(@"%@ (%@) is eating", _name, _birtType);
}

- (void)fly {
    NSLog(@"%@ (%@) is flying", _name, _birtType);
}

- (void)fall {
    NSLog(@"%@ (%@) is falling", _name, _birtType);
}

- (instancetype)initWithName:(nonnull NSString *)birdName {
    self = [super init];
    if (self) {
        self.name = birdName;
    }
    return self;
}

- (void) dealloc {
    NSLog(@"%@ was KILLED", _name);
}

@end
