//
//  AppDelegate.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//

import UIKit
import EventKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        // Override point for customization after application launch.
        if !NSUserDefaults.standardUserDefaults().objectForKey(UserDefaultsConstants.acceptedStartupCalendarPermissionKey) {
            var eventStore = EKEventStore()
            eventStore.requestAccessToEntityType(EKEntityTypeEvent, completion: {(granted: Bool, error: NSError?) in
                if error {
                    println(error)
                    return
                }
                NSUserDefaults.standardUserDefaults().setBool(granted, forKey: UserDefaultsConstants.acceptedStartupCalendarPermissionKey)
                if granted {
                    let calendar = NSCalendar.currentCalendar()
                    let start = NSDateComponents()
                    let end = NSDateComponents()
                    start.year = -1
                    end.year = 1
                    let startDate = calendar.dateByAddingComponents(start, toDate: NSDate(), options: nil)
                    let endDate = calendar.dateByAddingComponents(end, toDate: NSDate(), options: nil)
                    eventStore.predicateForEventsWithStartDate(startDate, endDate: endDate, calendars: nil)
                    var events: NSArray = eventStore.eventsMatchingPredicate(NSPredicate(value: true))
                    for event in events {
                        Item.createAndStoreItemFromEvent(event as EKEvent)
                    }
                }
            })
        }
        return true
    }

    func applicationWillResignActive(application: UIApplication!) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication!) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication!) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication!) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication!) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

