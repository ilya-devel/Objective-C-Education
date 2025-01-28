//
//  main.m
//  homework2
//
//  Created by Ильяс Альфатович on 28.01.2025.
//

#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Rectangle.h"
#import "Triangle.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rectangle = [[Rectangle alloc] initWithTwoSides:3 sideB:4];
        Triangle *triangle = [[Triangle alloc] initWithThreeSides:3 sideB:7 sideC:6];
        Circle *circle = [[Circle alloc] initWithRadius:33];
        
//        NSMutableArray *figures = [[NSMutableArray alloc] initWithCapacity:3];
//        [figures addObject:rectangle];
//        [figures addObject:triangle];
//        [figures addObject:circle];
        
        NSArray *figures = [NSArray arrayWithObjects:rectangle,triangle,circle, nil];
        
        for (Figure *figure in figures) {
            [figure about];
        }
        
    }
    return 0;
}


//1. Создать абстрактный класс Figure с методами вычисления площади и периметра, а также методом, выводящим информацию о фигуре на экран.

//2. Создать производные классы: Rectangle (прямоугольник), Circle (круг), Triangle (треугольник) со своими методами вычисления площади и периметра.

//3. Создать массив n-фигур и вывести полную информацию о фигурах на экран.
