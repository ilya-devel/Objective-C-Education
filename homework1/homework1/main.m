//
//  main.m
//  homework1
//
//  Created by Ильяс Альфатович on 26.01.2025.
//

#include "math.h"
#import <Foundation/Foundation.h>

void quadEquation(int a, int b, int c) {
    printf("В формуле (%d * x^2) + (%d * x) + %d = 0:\n", a, b, c);
    double d = (b * b) - (4 * a * c);
    if (d > 0) {
        double quad = sqrt(d);
        printf("\tX1 равно: %f\n", ((-1 * b - quad) / (2 * a)));
        printf("\tX2 равно: %f\n", ((-1 * b + quad) / (2 * a)));
    } else {
        if (d == 0) {
            printf("\tX равно: %d\n", (-b / (2 * a)));
        } else {
            printf("\tКорней нет\n");
        }
    }
}

void maxValue(int a, int b, int c) {
    printf("Максимальное число из чисел: %d, %d, %d равно: ", a, b, c);
    if (a > b && a > c) {
        printf("%d\n", a);
    } else {
        if (b > a && b > c) {
            printf("%d\n", b);
        } else {
            if (c > a && c > b) {
                printf("%d\n", c);
            } else
                printf("все три, они равны\n");
        }
    }
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        //        1. Решить квадратные уравнения:
        //        x^2 – 8x + 12 = 0,
        //        12x^2 – 4x + 2 = 0,
        //        x^2 – 100x - 2 = 0
        //        (заменять константы в коде).

        quadEquation(1, -8, 12);
        quadEquation(12, -4, 2);
        quadEquation(1, -100, -2);

        //        2. Создать программу, которая находит большее число среди 3-х
        //        чисел.

        maxValue(7, 113, 3);
        maxValue(700, 113, 3);
        maxValue(7, 113, 300);
        maxValue(3, 3, 3);
        maxValue(7, -113, 3);
    }
    return 0;
}
