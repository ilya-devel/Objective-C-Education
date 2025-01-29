//
//  Nest.h
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN
@class Bird;

typedef NS_ENUM(NSInteger, IsOccupancy) {
    Occupancy,
    NotOccupancy
};

@interface Nest : NSObject
    @property (nonatomic, weak) Bird *bird;
    @property (nonatomic, strong) Bird *errBird;
    @property (nonatomic, nullable) NSInteger *area;
    @property (nonatomic) IsOccupancy occupancy;

@end

NS_ASSUME_NONNULL_END
