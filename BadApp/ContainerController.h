//
//  ContainerController.h
//  BadApp
//
//  Created by Graeme Read on 22/09/2016.
//  Copyright © 2016 Vualto Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ContainerController, Container;
@protocol ContainerControllerDelegate <NSObject>
- (void)removedContainer;
@end


@interface ContainerController : NSObject
- (void)removeContainer:(Container *)container;
@property NSArray *containers;
@property id<ContainerControllerDelegate> delegate;
@end
