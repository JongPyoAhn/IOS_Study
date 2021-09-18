//
//  AppDelegate.swift
//  creditcardRecommended
//
//  Created by 안종표 on 2021/09/17.
//

import UIKit
import Firebase
import FirebaseFirestoreSwift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        //40.
        let db = Firestore.firestore()
        //db에 데이터가 있는지 없는지 확인하기위함
        db.collection("creditCardList").getDocuments { snapshot, error in
            guard snapshot?.isEmpty == true else {return}
            // 뱃치안에 하나씩 객체를 넣을 수 있도록 파일경로(레퍼런스)를 만들어 줄거임.
            let batch = db.batch()
            let card0Ref = db.collection("creditCardList").document("card0")
            let card1Ref = db.collection("creditCardList").document("card1")
            let card2Ref = db.collection("creditCardList").document("card2")
            let card3Ref = db.collection("creditCardList").document("card3")
            let card4Ref = db.collection("creditCardList").document("card4")
            let card5Ref = db.collection("creditCardList").document("card5")
            let card6Ref = db.collection("creditCardList").document("card6")
            let card7Ref = db.collection("creditCardList").document("card7")
            let card8Ref = db.collection("creditCardList").document("card8")
            let card9Ref = db.collection("creditCardList").document("card9")
            //여기까진 경로일 뿐
            
            //더미에 있는걸 가져와서 파일경로(래퍼런스)에 넣어준다.
            do{
                try batch.setData(from: CreditCardDummy.card0, forDocument: card0Ref)
                try batch.setData(from: CreditCardDummy.card1, forDocument: card1Ref)
                try batch.setData(from: CreditCardDummy.card2, forDocument: card2Ref)
                try batch.setData(from: CreditCardDummy.card3, forDocument: card3Ref)
                try batch.setData(from: CreditCardDummy.card4, forDocument: card4Ref)
                try batch.setData(from: CreditCardDummy.card5, forDocument: card5Ref)
                try batch.setData(from: CreditCardDummy.card6, forDocument: card6Ref)
                try batch.setData(from: CreditCardDummy.card7, forDocument: card7Ref)
                try batch.setData(from: CreditCardDummy.card8, forDocument: card8Ref)
                try batch.setData(from: CreditCardDummy.card9, forDocument: card9Ref) 
            }catch let error {
                print("Error writing card to Firestore : \(error.localizedDescription)")
            }

            batch.commit()
            
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

