//
//  ContainerController.m
//  BadApp
//
//  Created by Graeme Read on 22/09/2016.
//  Copyright © 2016 Vualto Ltd. All rights reserved.
//

#import "ContainerController.h"
#import "BadApp-Swift.h"

@implementation ContainerController
- (void)removeContainer:(Container *)container {

    NSMutableArray *array = [self.containers mutableCopy];
    [array removeObject:container];
    self.containers = [array copy];
    [_delegate removedContainer];
}


- (id)init {
    
    if (self = [super init]) {
        
        Container *a = [[Container alloc] initWithName:@"Small container" colour:[UIColor orangeColor]];
        Item *item1 = [[Item alloc] initWithName:@"Item 1"];
        Item *item2 = [[Item alloc] initWithName:@"Item 2"];
        a.items = @[item1, item2];
        Container *b = [[Container alloc] initWithName:@"Empty container" colour:[UIColor purpleColor]];
        Container *c = [[Container alloc] initWithName:@"Large container" colour:[UIColor blueColor]];
        item1.container = a;
        Item *item3 = [[Item alloc]
                       initWithName:@"Item 3"];
        Item *item4 = [[Item alloc] initWithName:
                       @"Item 4"];
        Item *item5 =
        [[Item alloc] initWithName:@"Item 5"];
        Item *item6 = [[Item alloc] initWithName:@"Item 6"];
        Item *item7 = [[Item alloc] initWithName:@"Item 7"];
        c.items = @[item3, item4, item5, item6];
        Container *d = [[Container alloc] initWithName:@"Ickle container" colour:[UIColor redColor]];
        
        self.containers = [NSArray
                           arrayWithObjects:a, b, c, d,
                           nil];
    }
    
    return self;
}@end
