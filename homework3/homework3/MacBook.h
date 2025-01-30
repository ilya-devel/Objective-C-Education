//
//  MacBook.h
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import <Foundation/Foundation.h>
#import "People.h"

NS_ASSUME_NONNULL_BEGIN
@class People;

@interface MacBook : NSObject
    @property (nonatomic, strong) NSString *name;
    @property (nonatomic) NSInteger storage;

    @property (nonatomic, strong) People *people;
@end

NS_ASSUME_NONNULL_END
