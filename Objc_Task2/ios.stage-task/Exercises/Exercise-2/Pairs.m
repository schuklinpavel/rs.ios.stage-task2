#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int doubledPairs = 0;
    
    for (int i = 0; i < array.count; i++) {
        for (NSNumber *n in array) {
            int max = array[i].intValue > n.intValue ? array[i].intValue : n.intValue;
            int min = array[i].intValue < n.intValue ? array[i].intValue : n.intValue;
            
            if (max - min == number.intValue) {
                doubledPairs += 1;
            }
        }
    }
    
    int pairs = doubledPairs / 2;
    
    return pairs;
}

@end
