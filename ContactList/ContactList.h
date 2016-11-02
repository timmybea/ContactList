//
//  ContactList.h
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

-(id) initWithMutArray;
-(void)printList;
-(void)printContact:(int)idNumber;
-(void)searchList:(NSString*)name;
-(void)addObjectToArray:(Contact*)contact;
-(int)contactListLength;

@end
