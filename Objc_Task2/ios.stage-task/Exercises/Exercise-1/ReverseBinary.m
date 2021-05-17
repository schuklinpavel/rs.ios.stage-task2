#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSString *string = @"" ;
    // NSUInteger x = n ;
    
    do {
        string = [[NSString stringWithFormat: @"%d", n&1] stringByAppendingString:string];
    } while (n >>= 1);

    for (int i = (int)string.length; i < 8; i++) {
        string = [@"0" stringByAppendingString:string];
    }
    
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[string length]];

    [string enumerateSubstringsInRange:NSMakeRange(0,[string length])
                                 options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                              usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                [reversedString appendString:substring];
                            }];
    
    long value = strtol([reversedString UTF8String], NULL, 2);
    
    // NSLog(@"___ %@\n", [NSString stringWithFormat:@"%ld", value] );

    return value;
}

