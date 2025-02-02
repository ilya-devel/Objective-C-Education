//
//  Robot.h
//  homework4
//
//  Created by Ильяс Альфатович on 31.01.2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Direction) {
    Left,
    Right,
    Up,
    Down
};

@interface Robot : NSObject

@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;

- (instancetype) init;

- (void) run:(Direction(^)(Direction)) block direction:(Direction) direction;

@end

NS_ASSUME_NONNULL_END
