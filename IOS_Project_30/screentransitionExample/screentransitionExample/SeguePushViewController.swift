//
//  SeguePushViewController.swift
//  screentransitionExample
//
//  Created by 안종표 on 2021/12/13.
//

import UIKit

class SeguePushViewController: UIViewController {
    var name: String?
    @IBOutlet weak var nameLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name {
            self.nameLable.text = name
            self.nameLable.sizeToFit()
        }
    }
    

  
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
