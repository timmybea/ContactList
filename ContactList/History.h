//
//  History.h
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface History : NSObject

-(id) initWithMutArray;
-(void)addCommandToHistory:(NSString*)command;
-(void)printHistory;

@end
