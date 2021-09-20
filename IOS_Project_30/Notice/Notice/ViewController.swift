//
//  ViewController.swift
//  Notice
//
//  Created by 안종표 on 2021/09/21.
//

import UIKit
//10.
import FirebaseRemoteConfig

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
            }
        })
    }
    //17. 리모트컨피그에서 isHidden의 value를 가져오는데 boolValue는 불값이라고 미리알려주는거임.
    func isNoticeHidden(_ remoteConfig: RemoteConfig) -> Bool {
        return remoteConfig["isHidden"].boolValue
    }
}
