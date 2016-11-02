//
//  ContactList.m
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "ContactList.h"

//@interface ContactList ()
//
//@property
//
//@end

@implementation ContactList

-(id) initWithMutArray {
    self = [super init];
    _list = [[NSMutableArray alloc] init];
    return self;
}

-(void)printList{
    for (int i = 0; i < self.list.count; i++) {
        NSLog(@"%d %@ \n\n", i, [[self.list objectAtIndex:i] name]);
    }
}

-(void)printContact:(int)idNumber {
    NSLog(@"%@", [[self.list objectAtIndex:idNumber] name]);
    NSLog(@"%@", [[self.list objectAtIndex:idNumber] lastName]);
    NSLog(@"%@", [[self.list objectAtIndex:idNumber] phoneNumber]);
    NSLog(@"%@", [[self.list objectAtIndex:idNumber] email]);
    NSLog(@"\n\n");
    
}

-(void)searchList:(NSString*)name {
    for (int i = 0; i < self.list.count; i++) {
        if([name isEqualToString:[[self.list objectAtIndex:i] name]]){
            NSLog(@"The contact %@ is located at index %d", name, i);
            break;
        }
    }
    NSLog(@"Contact not in list.");
}



@end
