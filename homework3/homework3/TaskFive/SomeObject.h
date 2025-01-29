//
//  SomeObject.h
//  lesson3
//
//  Created by Ильяс Альфатович on 30.01.2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SomeObject : NSObject
    @property (nonatomic, retain) id object1;
    @property (nonatomic) id object2;
    @property (nonatomic,copy) NSMutableArray *array;
    @property (atomic,retain) NSNumber *number;
    @property NSUInteger balance;

- (id) getObject1;
- (void) setObject1:(id _Nonnull)object1;

- (id) getObject2;
- (void) setObject2:(id _Nonnull)object2;

- (NSMutableArray *) getArray;
- (void) setArray:(NSMutableArray * _Nonnull)array;

- (NSNumber *) getNumber;
- (void) setNumber:(NSNumber * _Nonnull)number;

- (NSUInteger *) getBalance;
- (void) setBalance:(NSUInteger)balance;

@end

NS_ASSUME_NONNULL_END
