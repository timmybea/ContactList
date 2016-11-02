//
//  main.m
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"
#import "History.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] initWithMutArray];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        History *history = [[History alloc] initWithMutArray];
        NSString *command;
        BOOL isRunning = YES;
        
        while(isRunning == YES) {
            [inputCollector printMenu];
            command = [inputCollector inputForPrompt:@"Enter command: "];
            [history addCommandToHistory:command];
            
            if ([command isEqualToString:@"new"]) {
                Contact *contact = [[Contact alloc] init];
                contact.name = [inputCollector inputForPrompt:@"Enter contact first name: "];
                contact.lastName = [inputCollector inputForPrompt:@"Enter last name: "];
                contact.phoneNumber = [inputCollector inputForPrompt:@"Enter phonenumber: "];
                contact.email = [inputCollector inputForPrompt:@"Enter email: "];
                [contactList addObjectToArray:contact];
            } else if ([command isEqualToString:@"list"]) {
                [contactList printList];
            } else if ([command isEqualToString:@"quit"]) {
                NSLog(@"Exiting program.");
                isRunning = NO;
            } else if ([command isEqualToString:@"show"]) {
                NSString *idNumber = [inputCollector inputForPrompt:@"Enter contact id: "];
                if (idNumber.intValue > [contactList contactListLength]) {
                    NSLog(@"Contact not found");
                } else {
                    [contactList printContact:idNumber.intValue];
                }
            } else if ([command isEqualToString:@"find"]) {
                NSString *searchItem = [inputCollector inputForPrompt:@"Enter contact first name: "];
                [contactList searchList:searchItem];
            } else if ([command isEqualToString:@"history"]) {
                [history printHistory];
            } else {
                NSLog(@"Invalid command. Please try again.");
                NSLog(@"\n\n");
            }
        }
    }
    return 0;
}
