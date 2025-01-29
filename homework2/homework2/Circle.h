//
//  Circle.h
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure {
    @private float _radius;
}

- (instancetype) initWithRadius:(NSInteger) radius;
- (instancetype) initWithDiametr:(NSInteger) diametr;

@end

NS_ASSUME_NONNULL_END
