//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    // if dict nil, if accessed item nil, each will return nil as expected
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *favoriteDrinksArray = [NSMutableArray arrayWithCapacity:charactersArray.count];
    [charactersArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //favoriteDrinksArray[idx] = charactersArray[idx][@"favorite drink"]; // this works too
        favoriteDrinksArray[idx] = obj[@"favorite drink"]; // I don't have to cast?
    }];
    return favoriteDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *mutableCharacterDictionary = [NSMutableDictionary dictionaryWithDictionary:characterDictionary];
    mutableCharacterDictionary[@"quote"] = @"*Insert memorable quote*";
    return mutableCharacterDictionary;
}

@end
