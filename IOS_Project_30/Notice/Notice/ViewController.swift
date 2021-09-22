//
//  ViewController.swift
//  Notice
//
//  Created by 안종표 on 2021/09/21.
//

import UIKit
//10.
import FirebaseRemoteConfig
//29.
import FirebaseAnalytics

class ViewController: UIViewController {
    //10.
    var remoteConfig: RemoteConfig?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //10.
        remoteConfig = RemoteConfig.remoteConfig()
        //11.
        let setting = RemoteConfigSettings()
        setting.minimumFetchInterval = 0
        remoteConfig?.configSettings = setting
        
        //14.디폴트로 사용할 plist설정
        remoteConfig?.setDefaults(fromPlist: "RemoteConfigDefaults")
        
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        getNotice()
    }
    
}
//RemoteConfig
extension ViewController {
    //16.
    func getNotice() {
        guard let remoteconfig = remoteConfig else {return}
        
        remoteConfig?.fetch(completionHandler: {[weak self] status, _ in
            if status == .success {
                //remoteConfig를 잘 가져왔다면 원격구성값을 activate해줘라.
                remoteconfig.activate(completion: nil)
            }else { //가져오는데 실패했다면
                print("ERROR : Config not fetched")
            }
            guard let self = self else {return}
            
            //18.리모트컨피그가 숨기지 않는다면 notice뷰컨을 나타냄
            if !self.isNoticeHidden(remoteconfig) {
                let noticeVC = NoticeViewController(nibName: "NoticeViewController", bundle: nil)
                noticeVC.modalPresentationStyle = .custom
                noticeVC.modalTransitionStyle = .crossDissolve
                //리모트컨피그로부터 값을 가져옴
                let title = (remoteconfig["title"].stringValue ?? "").replacingOccurrences(of: "\\n", with: "\n")
                let detail = (remoteconfig["detail"].stringValue ?? "").replacingOccurrences(of: "\\n", with: "\n")
                let date = (remoteconfig["date"].stringValue ?? "").replacingOccurrences(of: "\\n", with: "\n")
                
                noticeVC.noticeContents = (title: title, detail: detail, date: date)
                self.present(noticeVC, animated: true, completion: nil)
            }//28.
            else {
                self.showEventAlert()
            }
        })
    }
    //17. 리모트컨피그에서 isHidden의 value를 가져오는데 boolValue는 불값이라고 미리알려주는거임.
    func isNoticeHidden(_ remoteConfig: RemoteConfig) -> Bool {
        return remoteConfig["isHidden"].boolValue
    }
}

//MARK: - A/B Testing
extension ViewController{
    //28.
    //A/B테스팅을 원격구성으로 진행되기 때문에 메시지에 표시될 값을 가져오는 것은 앞서 진행된 원격구성 실습과동일
    func showEventAlert(){
        guard let remoteConfig = remoteConfig else {return}
        remoteConfig.fetch { status, _ in
            if status == .success {
                remoteConfig.activate(completion: nil)
            }else {
                print("Config not fetched")
            }
            //remoteConfig에 message라는 키가 발생한걸 string값으로 받아올것임
            let message = remoteConfig["message"].stringValue ?? ""
            let confirmAction = UIAlertAction(title: "확인하기", style: .default) {_ in
                //Google Analytics
                //30. 이렇게하면 confirmAction이 버튼이 눌렸을 때 마다
                //이벤트를 파이어베이스에 기록하게된다.
                Analytics.logEvent("promotion_alert", parameters: nil)
            }
            
            let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
            let alertController = UIAlertController(title: "깜짝이벤트", message: message, preferredStyle: .alert)
            
            alertController.addAction(confirmAction)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        }
    }
    
}
