//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *answer = [@"" mutableCopy];
    NSInteger low, high;
    
    if (number < otherNumber) {
        low = number;
        high = otherNumber;
    } else {
        low = otherNumber;
        high = number;
    }
    
    for (NSInteger n = low; n < high; n++) 
        [answer appendFormat:@"%ld", (long)n];
    
    
    [answer appendFormat:@"%ld", (long)high];
    
    return answer;//@"";
}

@end
