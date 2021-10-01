//
//  AppDelegate.swift
//  DrinkAlarm
//
//  Created by 안종표 on 2021/09/24.
//

import UIKit
//24.
import NotificationCenter
//27-1.
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    //27-2
    let userNotificationCenter = UNUserNotificationCenter.current()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //25.
        UNUserNotificationCenter.current().delegate = self
        //27-3. 얼럿, 뱃지, 사운드에 대한 허락을 구할거임.
        let authorizationOptions = UNAuthorizationOptions(arrayLiteral: [.alert, .badge, .sound])
        userNotificationCenter.requestAuthorization(options: authorizationOptions) {
            _, error in
            if let error = error {
                print("Error : notification authorization request \(error.localizedDescription)")
            }
        }
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


}
//26.
extension AppDelegate: UNUserNotificationCenterDelegate {
    //노티피케이션센터를 보내기전에 어떠한 핸들링을 해줄것이냐.
    //banner, list, badge, sound를 보낸다는것.
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .list, .badge, .sound])
    }
    
    //콜해도안해도 상관은없는데 공식문서에서는 항상콜해주라고 적혀있음.
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }
}
