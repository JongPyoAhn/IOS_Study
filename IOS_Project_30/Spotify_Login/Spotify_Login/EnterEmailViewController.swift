//
//  EnterEmailViewController.swift
//  Spotify_Login
//
//  Created by 안종표 on 2021/09/13.
//

import UIKit
import Firebase
class EnterEmailViewController: UIViewController{
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Navigation Bar 보이기
        navigationController?.navigationBar.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 30
        nextButton.isEnabled = false
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        //처음에 화면에 들어섰을때 커서가 이메일에 자동으로 위치하게함
        emailTextField.becomeFirstResponder()
        
        print("들어옴")
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
        
        //Firebase 이메일/비밀번호 인증
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        //신규 사용자 생성
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] Result, error
            in
            guard let self = self else {return}
            
            if let error = error {
                let code = (error as NSError).code
                switch code {
                case 17007: //이미 가입한 게정일 때
                    //로그인 하기
                    self.showMainViewController()
                default:
                    self.errorMessageLabel.text = error.localizedDescription
                
                }
                
            }
            
        }
        
    }
    @IBOutlet weak var nextButton: UIButton!

    //
    private func showMainViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let mainViewController = storyboard.instantiateViewController(identifier: "MainViewController")
        mainViewController.modalPresentationStyle = .fullScreen
        navigationController?.show(mainViewController, sender: nil)
        
    }
    
    private func loginUser(withEmail email: String, password:String){
        Auth.auth().signIn(withEmail: email, password: password) {[weak self] result, error in
            guard let self = self else {return}
            if let error = error {
                self.errorMessageLabel.text = error.localizedDescription
            }else {
                self.showMainViewController()
            }
        }
    }
}
extension EnterEmailViewController : UITextFieldDelegate {
    
    //텍스트필드 입력완료됬을 때
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //키보드 내리기
        view.endEditing(true)
        return false
    }
    
    //텍스트필드 작성 끝났을 때
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty: Bool = emailTextField.text == ""
        let isPasswordEmpty: Bool = passwordTextField.text == ""
        nextButton.isEnabled = !isEmailEmpty && !isPasswordEmpty
    }
}
