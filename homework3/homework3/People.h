#import <Foundation/Foundation.h>
#import "MacBook.h"

NS_ASSUME_NONNULL_BEGIN
@class MacBook;

@interface People : NSObject
    @property (nonatomic, strong) NSString *name;
//    @property (nonatomic, strong) MacBook *macbook;
    @property (nonatomic, weak) MacBook *macbook;
@end

NS_ASSUME_NONNULL_END
