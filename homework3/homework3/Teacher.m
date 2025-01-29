//
//  Teacher.m
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import "Teacher.h"

@implementation Teacher
- (void) prepareHomework {
    NSLog(@"Teacher preparing homework");
    [self.delegate doHomework];
}
@end
