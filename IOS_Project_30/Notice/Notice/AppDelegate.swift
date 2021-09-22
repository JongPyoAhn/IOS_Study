//
//  AppDelegate.swift
//  Notice
//
//  Created by 안종표 on 2021/09/20.
//

import UIKit
import Firebase
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        //33.
        //이것을 통해서 파이어베이스가 각각의 기기에 부여한 인증 토큰값을 콘솔에서 확인할 수 있게됨.
        //이런식으로 앱이 시작됬을 때 이 토큰값을 얻어서 복사하고 웹 콘솔로가서 A/B테스팅으로 이동
        //실행중인 실험을 누르고 우측에 점점점누르면 테스트기기 관리가 있음.
        //거기 FIS인증토큰이 여기코드에서 받은 토큰값임.
        Installations.installations().authTokenForcingRefresh(true) { result, error in
            if let error = error {
                print("Error")
                return
            }
            
            guard let result = result else  {return}
            print("Installation auth token: \(result.authToken)")
        }
        // Override point for customization after application launch.
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

