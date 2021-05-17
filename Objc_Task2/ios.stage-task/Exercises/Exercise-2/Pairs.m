#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int doubledPairs = 0;
//    NSMutableSet *pairIndexes = [[NSMutableSet alloc] init];
     
    for (int i = 0; i < array.count; i++) {
        for (int y = 0; y < array.count; y++) {
            if (i != y) {
                int n = array[y].intValue;
                int max = array[i].intValue > n ? array[i].intValue : n;
                int min = array[i].intValue < n ? array[i].intValue : n;
                
                if (max - min == number.intValue) {
                    doubledPairs += 1;
    //                [pairIndexes addObject: [NSNumber numberWithInt:i]];
    //                [pairIndexes addObject: [NSNumber numberWithInt:y]];
                }
            }
        }
    }
    
//    NSLog(@"%@", pairIndexes);
    
    int pairs = doubledPairs / 2;
    
    return pairs;
}

@end
