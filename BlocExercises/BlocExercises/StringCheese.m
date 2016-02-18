//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
//    return nil;
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
//    // My original solution
//    NSString *cheeseSuffix = @" cheese";
//    if ([[cheeseName lowercaseString] hasSuffix:cheeseSuffix]) {
//        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
//        NSRange cheeseRange = [cheeseName rangeOfString:cheeseSuffix options:NSCaseInsensitiveSearch];
//        return [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
//    } else {
//        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
//        return cheeseName;
//    }
    
    // One-line solution
    return [cheeseName stringByReplacingOccurrencesOfString:@" cheese"
                                                 withString:@""
                                                    options:NSCaseInsensitiveSearch
                                                      range:NSMakeRange(0, [cheeseName length])];

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        return @"1 cheese";
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        return [NSMutableString stringWithFormat:@"%lu cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
