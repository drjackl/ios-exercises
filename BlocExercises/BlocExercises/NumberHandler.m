//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return [NSNumber numberWithLong:[number longValue]*2];//@0;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    int start = (int)number;
    int end = (int)otherNumber;
    
    if (number > otherNumber) {
        start = (int)otherNumber;
        end = (int)number;
    }
    
    NSMutableArray* numbersArray = [NSMutableArray arrayWithCapacity:end-start];
    for (int n = start; n <= end; n++) {
        numbersArray[n-start] = [NSNumber numberWithInt:n];
    }
    return numbersArray;//@[];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSInteger __block min = NSIntegerMax;
    NSInteger __block number;
    [arrayOfNumbers enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //NSInteger number = [(NSNumber*)obj integerValue];
        number = [(NSNumber*)obj integerValue];
        min = MIN(min, number);
        //NSLog(@"num: %d; min: %d", (int)number, (int)min);
    }];
    return min;
//    NSInteger min = NSIntegerMax;
//    for (NSNumber* n in arrayOfNumbers) {
//        min = MIN([n integerValue], min);
//    }
//    return min;
}

@end
