//
//  SomeObject.m
//  lesson3
//
//  Created by Ильяс Альфатович on 30.01.2025.
//

#import "SomeObject.h"

@implementation SomeObject

- (nonnull id)getObject1 {
    return _object1;
}

- (void) setObject1:(id)object1 {
    _object1 = object1;
}

- (nonnull id)getObject2 {
    return _object2;
}

- (void) setObject2:(id)object2 {
    _object2 = object2;
}

- (nonnull NSMutableArray *)getArray {
    return _array;
}

- (void) setArray:(NSMutableArray *)array {
    _array = array.copy;
}

- (nonnull NSNumber *)getNumber {
    return _number;
}

//- (void) setNumber:(NSNumber *)number {
//    _number = number;
//}

- (nonnull NSUInteger *)getBalance {
    return &(_balance);
}

//- (void) setBalance:(NSUInteger)balance {
//    _balance = balance;
//}

@end
