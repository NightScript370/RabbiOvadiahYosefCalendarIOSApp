//
//  AppDelegate.swift
//  Rabbi Ovadiah Yosef Calendar
//
//  Created by Elyahu on 2/20/23.
//

import UIKit
import KosherSwift

class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UNUserNotificationCenter.current().delegate = self
        UIApplication.shared.applicationIconBadgeNumber = 0
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        // Display the notification when the app is in the foreground
        completionHandler([.banner, .sound, .badge, .list])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async {
        NotificationManager.instance.initializeLocationObjectsAndSetNotifications()
        if response.actionIdentifier == "omerAction" {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyboard.instantiateViewController(withIdentifier: "Omer") as! OmerViewController
            newViewController.modalPresentationStyle = .fullScreen
            // Get the reference to the currently visible view controller
            if #available(iOS 15.0, *) {
                if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene,
                   let rootViewController = scene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
                    rootViewController.present(newViewController, animated: true, completion: nil)
                }
            } else {
                if let rootViewController = UIApplication.shared.windows.first?.rootViewController {
                    // Present the new view controller
                    rootViewController.present(newViewController, animated: true, completion: nil)
                }
            }
        }
    }
}

