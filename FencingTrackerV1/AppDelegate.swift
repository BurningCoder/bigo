//
//  AppDelegate.swift
//  FencingTrackerV1
//
//  Created by Earlight on 1/18/20.
//  Copyright © 2020 Richard. All rights reserved.
//
import LeanCloud
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        LCApplication.logLevel = .all
        do {
            try LCApplication.default.set(
                id: "0xztkWjU0QbDBaPlvko0lIR8-MdYXbMMI",
                key: "v5gnPEM4xOyUQPNuJM9DrnAE",
                serverURL: "0xztkwju.api.lncldglobal.com")
        } catch {
            print(error)
        }
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
    }

        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.

