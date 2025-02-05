//
//  Loader.h
//  homework5
//
//  Created by Ильяс Альфатович on 03.02.2025.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property (nonatomic) NSURLSession * session;

-(void) performGetRequest:(NSString *) stringURL arguments:(NSDictionary *) arguments myBlock:(void(^) (NSDictionary*,NSError*)) myBlock;
-(void) performPostRequest:(NSString *) stringURL arguments:(NSDictionary *) arguments myBlock:(void(^) (NSDictionary*,NSError*)) myBlock;

-(NSDictionary*) parseJSONData:(NSData*) data error:(NSError**) error;
-(NSData*) dataWithJSON:(NSDictionary*) jsonDict error:(NSError**) error;

@end

NS_ASSUME_NONNULL_END
