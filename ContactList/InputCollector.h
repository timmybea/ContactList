//
//  InputCollector.h
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactList.h"

@interface InputCollector : NSObject

-(void)printMenu;
-(NSString*)inputForPrompt:(NSString*)promptString;

@end
