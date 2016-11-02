//
//  InputCollector.m
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(void)printMenu {
    NSLog(@"What would you like do next?");
    NSLog(@"new - Create a new contact");
    NSLog(@"list - List all contacts");
    NSLog(@"show - Show contact's details");
    NSLog(@"find - Find contact by name");
    NSLog(@"history - Show the last three commands");
    NSLog(@"quit - Exit Application");
    
}

-(NSString*)inputForPrompt:(NSString*)promptString;{
    NSLog(@"%@", promptString);
    char varWord[255];
    fgets(varWord, 255, stdin);
    NSString *userInput = [NSString stringWithCString:varWord encoding:NSUTF8StringEncoding];
    userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userInput;
}

@end
