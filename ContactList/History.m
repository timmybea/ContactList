//
//  History.m
//  ContactList
//
//  Created by Tim Beals on 2016-11-01.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "History.h"

@interface History ()

@property (nonatomic, strong) NSMutableArray *history;

@end


@implementation History

-(id) initWithMutArray {
    self = [super init];
    _history = [[NSMutableArray alloc] init];
    return self;
}

-(void)addCommandToHistory:(NSString*)command {
    if(self.history.count == 3) {
        [self.history addObject:command];
        [self.history removeObjectAtIndex:0];
    } else {
        [self.history addObject:command];
    }
}

-(void)printHistory {
    NSLog(@"%@", self.history);
}


@end
