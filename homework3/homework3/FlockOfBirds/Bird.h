//
//  Bird.h
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import <Foundation/Foundation.h>
#import "Nest.h"

NS_ASSUME_NONNULL_BEGIN
@class Nest;

@interface Bird : NSObject
    @property (nonatomic, strong) NSString *name;
    @property (nonatomic, strong) NSString *birtType;
    @property (nonatomic, strong) Nest *nest;

    - (void) fly;
    - (void) fall;
    - (void) eat;

- (instancetype) initWithName:(NSString *) birdName;
@end


NS_ASSUME_NONNULL_END
