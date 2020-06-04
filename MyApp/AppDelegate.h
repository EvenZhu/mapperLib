//
//  AppDelegate.h
//  MyApp
//
//  Created by Even on 2020/6/4.
//  Copyright © 2020 Even. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

