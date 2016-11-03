//
//  AppDelegate.h
//  MyResume
//
//  Created by Jerod on 16/11/1.
//  Copyright © 2016年 Jerod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

