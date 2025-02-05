//
//  ViewController.m
//  homework5
//
//  Created by Ильяс Альфатович on 03.02.2025.
//

#import "ViewController.h"
#import "Loader.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void) performLoadingGetRequest {
    [self.loader performGetRequest:@"https://postman-echo.com/get"
                         arguments:@{@"param1":@"xyz",
                                     @"param2":@"wer"}
                           myBlock:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            [self.inputGettingData setString:[NSString stringWithFormat:@"%@", dict]];
        });
    }];
}

- (void) performLoadingPostRequest {
    NSLog(@"%@", self.inputSendingData.textStorage.string);
    
    [self.loader performPostRequest:@"https://postman-echo.com/post"
                         arguments:@{@"param1":@"xyz",
                                     @"param2":@"wer",
                                     @"body":self.inputSendingData.textStorage.string}
                           myBlock:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            [self.inputGettingData setString:[NSString stringWithFormat:@"%@", dict]];
        });
    }];
}

- (IBAction)clickGetResponse:(id)sender {
    [self performLoadingGetRequest];
}

- (IBAction)clickPostResponse:(id)sender {
    [self performLoadingPostRequest];
}

@end
