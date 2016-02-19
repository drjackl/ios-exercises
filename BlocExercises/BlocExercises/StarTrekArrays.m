//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];//@[];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];//@"";
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    NSSortDescriptor *alphabeticalSortDescriptor = [[NSSortDescriptor alloc]
                                                    initWithKey:nil
                                                    ascending:YES];
    [mutableCharacterArray sortUsingDescriptors:@[alphabeticalSortDescriptor]];
    return mutableCharacterArray;//@[];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
//    BOOL *foundWorf;
//    *foundWorf = NO;
//    [characterArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSString *character = obj;
//        if ([character localizedCaseInsensitiveContainsString:@"worf"]) {
//            *foundWorf = YES;
//            *stop = YES;
//        }
//    }];
//    return *foundWorf ? YES : NO;
    for (NSString *character in characterArray) {
        if ([character localizedCaseInsensitiveContainsString:@"worf"])
            return YES;
    }
    return NO;
}

@end
