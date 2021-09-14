//
//  MainViewController.swift
//  Spotify_Login
//
//  Created by 안종표 on 2021/09/13.
//

import UIKit
import FirebaseAuth
class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ??
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomeLabel.text = """
        환영합니다.
        \(email)님
        """
        //providerID가 password로 찍혀있으면 이메일, 비밀번호로 로그인했다는 의미
        let isEmailSignIn = Auth.auth().currentUser?.providerData[0].providerID == "password"
        resetPasswordButton.isHidden = !isEmailSignIn
    }
    @IBOutlet weak var resetPasswordButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBAction func resetPasswordButtonTapped(_ sender: Any) {
        //현재 사용자가 가지고있는 이메일로 비밀번호를 리셋할 수 있는 메일을 보내게 된다.
        let email = Auth.auth().currentUser?.email ?? ""
        Auth.auth().sendPasswordReset(withEmail: email)
    }
    @IBAction func logoutButtonTapped(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do{
            //이 버튼을 눌렀을때 첫번째 화면으로 넘어감
            try firebaseAuth.signOut()
            self.navigationController?.popToRootViewController(animated: true)
        }catch let error as NSError{
            print(error.localizedDescription)
        }
        
        
       
        
    }
}
