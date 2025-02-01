//
//  main.m
//  homework4
//
//  Created by Ильяс Альфатович on 31.01.2025.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [Robot new];
        
        Direction (^direction)(Direction) = ^Direction(Direction someDirection) {
            return someDirection;
        };
        
        [robot run:direction direction:Left];
        [robot run:direction direction:Left];
        [robot run:direction direction:Up];
        [robot run:direction direction:Right];
        [robot run:direction direction:Left];
        [robot run:direction direction:Down];
        [robot run:direction direction:Right];
        [robot run:direction direction:Up];
    }
    return 0;
}
