//
//  main.m
//  lesson3
//
//  Created by Ильяс Альфатович on 29.01.2025.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"
#import "People.h"
#import "Teacher.h"
#import "Student.h"
#import "FlockOfBirds/SuperBird.h"
#import "FlockOfBirds/SlowBird.h"
#import "FlockOfBirds/Nest.h"


struct IPhone{
    NSString *name;
    NSInteger storage;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // MacBook *macBookPro = [[MacBook alloc] MacBook init];
//        MacBook *macBookPro = [MacBook new];
//
//        macBookPro.name = @"MacBook Pro ";
//        macBookPro.storage = 512;
//
//         MacBook *macBookAir = macBookPro;
//         macBookAir.name = @"MacBook Air";
//
//         NSLog(@" %@ %d",macBookPro.name, macBookPro.storage);
//         NSLog(@" %@ %d",macBookAir.name, macBookAir.storage);
//
//         struct IPhone iphone15;
//         struct IPhone iphone14;
//
//         iphone15.name = @"IPhone15";
//         iphone15.storage = 256;
//
//         iphone14 = iphone15;
//         iphone14.name = @"IPhone14";
//
//         NSLog(@" %@ %d",iphone15.name, iphone15.storage);
//         NSLog(@" %@ %d",iphone14.name, iphone14.storage);
//
//        People *people = [People new];
//        people.name = @"Some Name";
//        people.macbook = macBookPro;
//        macBookPro.people = people;
//
//        NSLog(@"Finish");
        
//        Teacher *teacher = [Teacher new];
//        Student *student = [Student new];
////        Student *student2 = [Student new];
//        teacher.delegate = student;
////        teacher.delegate = student2;
//        [teacher prepareHomework];
        SuperBird *superBird = [[SuperBird alloc] initWithName: @"Gosha"];
        SlowBird *slowBird = [[SlowBird alloc] initWithName: @"Kesha"];
        Nest *nest = [Nest new];
        nest.area = 100;
        nest.occupancy = NotOccupancy;
        
        // Error situation with retain cycle
//        nest.errBird = slowBird;
//        slowBird.nest = nest;
        
        
        nest.bird = superBird;
        superBird.nest = nest;
    }
    return 0;
}
