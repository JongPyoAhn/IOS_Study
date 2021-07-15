//
//  PlayerViewController.swift
//  NetflixStyle
//
//  Created by 안종표 on 2021/07/14.
//


import UIKit

class PlayerViewController: UIViewController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
}

//extension AVPlayer {
//    var isPlaying: Bool {
//        guard self.currentItem != nil else { return false }
//        return self.rate != 0
//    }
//}
