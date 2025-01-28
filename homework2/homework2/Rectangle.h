//
//  Rectangle.h
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure {
    @private NSInteger _sideA;
    @private NSInteger _sideB;
}

- (instancetype) initWithOneSide:(NSInteger) side;
- (instancetype) initWithTwoSides:(NSInteger) sideA sideB:(NSInteger) sideB;

@end

NS_ASSUME_NONNULL_END
