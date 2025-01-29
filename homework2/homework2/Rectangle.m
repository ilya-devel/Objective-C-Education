//
//  Rectangle.m
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype)initWithTwoSides:(NSInteger)sideA sideB:(NSInteger)sideB {
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
    }
    return self;
}

- (nonnull instancetype)initWithOneSide:(NSInteger)side {
    self = [super init];
    if (self) {
        _sideA = side;
        _sideB = side;
    }
    return self;
}

- (float)getArea {
    return _sideA * _sideB;
}

- (float)getPerimetr {
    return (_sideA + _sideB) * 2;
}

- (void) about {
    printf("This is rectangle with area equal %f and perimetr equal %f\n", self.getArea, self.getPerimetr);
}

@end
