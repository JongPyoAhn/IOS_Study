//
//  LoginViewController.swift
//  Spotify_Login
//
//  Created by 안종표 on 2021/09/13.
//

import UIKit

class LoginViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Navigation Bar 숨기기
        navigationController?.navigationBar.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        [emailLoginButton, googleLoginButton, appleLoginButton].forEach{
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        }
    }
    
    @IBOutlet weak var emailLoginButton: UIButton!
    
    @IBOutlet weak var googleLoginButton: UIButton!
    
    @IBOutlet weak var appleLoginButton: UIButton!
    
    @IBAction func googleLoginButtonTabbed(_ sender: Any) {
        //Firebase인증
    }
    
    @IBAction func appleLoginButtonTabbed(_ sender: Any) {
        //Friebase인증
    }
}
