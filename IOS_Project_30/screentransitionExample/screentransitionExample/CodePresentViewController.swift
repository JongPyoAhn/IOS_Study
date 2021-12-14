//
//  CodePresentViewController.swift
//  screentransitionExample
//
//  Created by 안종표 on 2021/12/13.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        self.delegate?.sendData(name: "Gunter")
        self.dismiss(animated: true, completion: nil)
    }
    
  

}
