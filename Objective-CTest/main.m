//
//  main.m
//  Objective-CTest
//
//  Created by Victor Hong on 31/10/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//
//    BOOL question = [inputString hasSuffix:@"?"];
//    NSLog(@"%hhd", question);
//    
    
//    BOOL question = [@"hello!" hasSuffix:@"!"];
//    NSLog(@"%hhd", question);
//
//    NSString *string = @"123";
//    NSNumber  *aNum = [NSNumber numberWithInteger: [string integerValue]];
//    NSLog(@"%@",aNum);//NSString to NSNumber
    
//    NSString *randomString = @"hello world this is the first question";
    
    
    
    
    BOOL contineApp = YES;
    
    while (contineApp == YES) {
        
        char inputChars[255];
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);

        printf("Your string is %s\n", inputChars);
        
        //Convert input to NSString
        NSMutableString *inputString = [NSMutableString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
        //Convert string to uppercase
        NSString *upperString = [inputString uppercaseString];
        
        NSLog(@"This is the upper case string: %@", upperString);
        
        //Convert string to lowercase
        NSString *lowerString = [inputString lowercaseString];
        
        NSLog(@"This is the lower case string: %@", lowerString);
        
        //Check if string is numeric
        NSScanner *scanner = [NSScanner scannerWithString:inputString];
        BOOL isNumeric = [scanner scanInteger:NULL];

        if (isNumeric) {
            NSInteger number=[inputString intValue];
            NSLog(@"This is the number: %ld", (long)number);
        } else {
            NSLog(@"This is not a number");
        }
        
        //Canadianize the string
        NSString *canadianize = [inputString stringByAppendingString:@", eh?"];
        
        NSLog(@"The string is canadianize: %@", canadianize);

        //response if it has ? or ! at the end
        if ([inputString hasSuffix:@"?\n"]) {
            NSLog(@"I don't know");
        } if ([inputString hasSuffix:@"!\n"]) {
            NSLog(@"Whoa, calm down");
        }

        //replace space with -
        NSString *replaceString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"%@", replaceString);

        //find out how long the string is
        NSInteger wordCount = [inputString length] - 1;
        
        NSLog(@"This string is %ld long", (long)wordCount);
        
        //Ask user if you want to continue app
        char answerChar[255];
        printf("Enter y to contine app, enter n to stop the app");
        fgets(answerChar, 255, stdin);
        
        NSString *answerString = [NSString stringWithUTF8String:answerChar];
        if ([answerString isEqualToString:@"n\n"]) {
            contineApp = NO;
        }
        
    }
    return 0;
}
