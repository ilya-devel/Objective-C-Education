//
//  Loader.m
//  homework5
//
//  Created by Ильяс Альфатович on 03.02.2025.
//

#import "Loader.h"

@implementation Loader

-(NSURLSession*) session{
    if (!_session) {
        NSURLSessionConfiguration * configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        configuration.HTTPAdditionalHeaders = @{@"Content-Type":@"application/json",
                                                @"Accept":@"application/json",
                                                @"User-Agent": @"iPhone15pro"};
        _session = [NSURLSession sessionWithConfiguration:configuration];
    }
    return _session;
}

-(NSDictionary*) parseJSONData:(NSData*) data error:(NSError**) error{
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
}

-(NSData*) dataWithJSON:(NSDictionary*) jsonDict error:(NSError**) error{
    return [NSJSONSerialization dataWithJSONObject:jsonDict options:kNilOptions error:error];
}

-(void) performGetRequest:(NSString *) stringURL arguments:(NSDictionary *) arguments myBlock:(void(^) (NSDictionary*,NSError*)) myBlock{
    NSURLComponents* urlComponents = [NSURLComponents componentsWithString:stringURL];
    if (arguments) {
        NSMutableArray <NSURLQueryItem*> * queryItems = [NSMutableArray new];
        for (NSString* key in arguments.allKeys) {
            [queryItems addObject:[NSURLQueryItem queryItemWithName:key value:arguments [key]]];
        }
        urlComponents.queryItems = [queryItems copy];
    }
    NSURL* url = urlComponents.URL;
    NSURLSessionDataTask * dataTask = [self.session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"SimpleError: %@", error);
            myBlock(nil, error);
            return;
        }
        NSError* parsingError;
        NSDictionary * dict = [self parseJSONData:data error:&parsingError];
        if (parsingError) {
            NSLog(@"ParsingError: %@", parsingError);
            myBlock(nil, parsingError);
            return;
        }
        myBlock(dict, nil);
    }];
    [dataTask resume];
}

-(void) performPostRequest:(NSString *) stringURL arguments:(NSDictionary *) arguments myBlock:(void(^) (NSDictionary*,NSError*)) myBlock{
    
    NSURLComponents* urlComponents = [NSURLComponents componentsWithString:stringURL];
//    if (arguments) {
//        NSMutableArray <NSURLQueryItem*> * queryItems = [NSMutableArray new];
//        for (NSString* key in arguments.allKeys) {
//            [queryItems addObject:[NSURLQueryItem queryItemWithName:key value:arguments [key]]];
//        }
//        urlComponents.queryItems = [queryItems copy];
//    }
    NSURL* url = urlComponents.URL;
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:url];
    request.HTTPMethod = @"POST";
    if (arguments) {
        NSData * body = [self dataWithJSON:arguments error:nil];
        request.HTTPBody = body;
    }
    
    NSURLSessionDataTask * dataTask = [self.session dataTaskWithRequest:request
                                                      completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"SimpleError: %@", error);
            myBlock(nil, error);
            return;
        }
        NSError* parsingError;
        NSDictionary * dict = [self parseJSONData:data error:&parsingError];
        if (parsingError) {
            NSLog(@"ParsingError: %@", parsingError);
            myBlock(nil, parsingError);
            return;
        }
        myBlock(dict, nil);
    }];
    [dataTask resume];
}

@end
