//
//  Teacher.h
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import <Foundation/Foundation.h>
#import "TeacherDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject

@property (nonatomic, weak, nullable) id<TeacherDelegate> delegate;

- (void) prepareHomework;

@end

NS_ASSUME_NONNULL_END
