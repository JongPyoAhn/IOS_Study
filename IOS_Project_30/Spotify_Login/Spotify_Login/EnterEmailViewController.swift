//
//  EnterEmailViewController.swift
//  Spotify_Login
//
//  Created by 안종표 on 2021/09/13.
//

import UIKit

class EnterEmailViewController: UIViewController{
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
    }
    
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!


    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButtontabbed(_ sender: Any) {
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
