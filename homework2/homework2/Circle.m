//
//  Circle.m
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import "Circle.h"
#import "math.h"

@implementation Circle

- (instancetype)initWithRadius:(NSInteger)radius {
    self = [super init];
    if (self) {
        _radius = radius;
    }
    return self;
}

- (nonnull instancetype)initWithDiametr:(NSInteger)diametr {
    self = [super init];
    if (self) {
        _radius = diametr / 2;
    }
    return self;
}

- (float)getArea {
    return 2 * M_PI * (_radius * _radius);
}

- (float)getPerimetr {
    return 2 * M_PI * _radius;
}

- (void) about {
    printf("This is circle with area equal %f and perimetr equal %f\n", self.getArea, self.getPerimetr);
}

@end
