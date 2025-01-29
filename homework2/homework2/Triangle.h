//
//  Triangle.h
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure {
    @private NSInteger _sideA;
    @private NSInteger _sideB;
    @private NSInteger _sideC;
}

- (instancetype) initWithOneSide:(NSInteger) side;
- (instancetype) initWithTwoSides:(NSInteger) sideA sideB:(NSInteger) sideB;
- (instancetype) initWithThreeSides:(NSInteger) sideA sideB:(NSInteger) sideB sideC:(NSInteger) sideC;

@end

NS_ASSUME_NONNULL_END
