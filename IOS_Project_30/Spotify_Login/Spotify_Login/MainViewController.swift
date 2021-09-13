//
//  MainViewController.swift
//  Spotify_Login
//
//  Created by 안종표 on 2021/09/13.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ??
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        //이 버튼을 눌렀을때 첫번째 화면으로 넘어감
        self.navigationController?.popToRootViewController(animated: true)
    }
}
