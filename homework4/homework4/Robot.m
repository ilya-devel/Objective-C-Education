//
//  Robot.m
//  homework4
//
//  Created by Ильяс Альфатович on 31.01.2025.
//

#import "Robot.h"

@implementation Robot

- (void)run {
    NSLog(@"X = %ld, Y = %ld", self.x, (long)self.y);
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return self;
}

- (void)run:(Direction (^)(Direction))block direction:(Direction)direction{
//    NSLog(@"%ld", (long)direction);
    NSString *textDirection = @"";
    switch (block(direction)) {
        case Left:
            self.x -= 1;
            textDirection = @"Left, ";
            break;
        case Right:
            self.x += 1;
            textDirection = @"Right, ";
            break;
        case Up:
            self.y += 1;
            textDirection = @"Up, ";
            break;
        case Down:
            self.y -= 1;
            textDirection = @"Down, ";
            break;
        default:
            break;
    }
    NSLog(@"%@ X = %ld, Y = %ld", textDirection, self.x, (long)self.y);
}

@end
