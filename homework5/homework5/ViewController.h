//
//  ViewController.h
//  homework5
//
//  Created by Ильяс Альфатович on 03.02.2025.
//

#import <Cocoa/Cocoa.h>
#import "Loader.h"

@interface ViewController : NSViewController

@property (unsafe_unretained) IBOutlet NSTextView *inputSendingData;
@property (unsafe_unretained) IBOutlet NSTextView *inputGettingData;



@property (nonatomic) Loader * loader;

@end

