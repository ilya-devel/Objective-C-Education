//
//  SuperBird.m
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import "SuperBird.h"

@implementation SuperBird

- (instancetype) initWithName:(NSString *)birdName  {
    self = [super initWithName: birdName];
    if (self) {
        self.birtType = @"SuperBird";
    }
    return self;
}

@end
