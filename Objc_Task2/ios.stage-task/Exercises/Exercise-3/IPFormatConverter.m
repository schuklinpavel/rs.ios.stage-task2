#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray == nil || !numbersArray.count) {
        return @"";
    }
    
//    for (NSObject *number in numbersArray) {
//        NSLog(@"______________-   %@", [NSNumber numberWithInt:number]);
//        if ((int)number > 255) {
//            return @"The numbers in the input array can be in the range from 0 to 255.";
//        }
//        if ((int)number < 0) {
//            return @"Negative numbers are not valid for input.";
//        }
//    }
    
    NSString *string = [NSMutableString stringWithCapacity: 16];
    
    for (int i = 0; i < 4; i += 1) {
        if (i < (int)numbersArray.count) {
            NSString *number = [NSString stringWithFormat:@"%@", numbersArray[i]];
            
            if (number.intValue > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            if (number.intValue < 0) {
                return @"Negative numbers are not valid for input.";
            }
            
            string = [string stringByAppendingString: number];
        } else {
            string = [string stringByAppendingString:@"0"];
        }
        if (i != 3) {
            string = [string stringByAppendingString:@"."];
        }
    }
    
    return string;
}

@end
