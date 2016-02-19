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
    
    NSInteger low = number; // style: set to default, switch if somehow not happy
    NSInteger high = otherNumber; // cf style: if one way, set one way; else other way, so swap order
    
    if (number > otherNumber) {
        low = otherNumber;
        high = number;
    }
    
    NSMutableString *answer = [[NSMutableString alloc] initWithCapacity:high-low];
    for (NSInteger n = low; n <= high; n++) { // loop is now inclusive!
        [answer appendFormat:@"%ld", (long)n];
    }

    
    return answer;//@"";
}

@end
