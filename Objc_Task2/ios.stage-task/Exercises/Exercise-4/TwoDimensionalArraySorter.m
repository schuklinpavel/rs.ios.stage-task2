#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil || !array.count) {
        return @[];
    }
    
    NSMutableArray *strings = [[NSMutableArray alloc] init];
    NSMutableArray *numbers = [[NSMutableArray alloc] init];
    
    for (NSArray *arr in array) {
        if ([arr isKindOfClass:[NSArray class]]) {
            for (NSArray *item in arr) {
                if ([item isKindOfClass:[NSNumber class]]) {
                    [numbers addObject:item];
                } else if ([item isKindOfClass:[NSString class]]) {
                    [strings addObject:item];
                }
            }
        } else {
            return @[];
        }
    }
    
    NSArray *sortedNumbers;
    sortedNumbers = [numbers sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        return [a compare:b];
    }];
    
    NSArray *sortedStrings;
    sortedStrings = [strings sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        if (numbers.count) {
            return [b compare:a];
        }
        return [a compare:b];
    }];
    
    if (sortedNumbers.count && sortedStrings.count) {
        return @[sortedNumbers, sortedStrings];
    } else if (sortedNumbers.count) {
        return sortedNumbers;
    } else if (sortedStrings.count) {
        return sortedStrings;
    }
    
    return @[];
}

@end
