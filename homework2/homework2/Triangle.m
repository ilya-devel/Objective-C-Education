//
//  Triangle.m
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import "Triangle.h"
#import <math.h>

@implementation Triangle

- (instancetype)initWithThreeSides:(NSInteger)sideA sideB:(NSInteger)sideB sideC:(NSInteger)sideC {
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideC;
    }
    return self;
}

- (instancetype)initWithTwoSides:(NSInteger)sideA sideB:(NSInteger)sideB {
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideB;
    }
    return self;
}

- (nonnull instancetype)initWithOneSide:(NSInteger)side {
    self = [super init];
    if (self) {
        _sideA = side;
        _sideB = side;
        _sideC = side;
    }
    return self;
}

- (float)getArea {
    float p = self.getPerimetr / 2;
    return sqrt(p * (p - _sideA) * (p - _sideB) * (p - _sideC));
}

- (float)getPerimetr {
    return _sideA + _sideB + _sideC;
}

- (void) about {
    printf("This is triangle with area equal %f and perimetr equal %f\n", self.getArea, self.getPerimetr);
}


@end
