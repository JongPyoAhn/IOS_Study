//
//  NoticeViewController.swift
//  Notice
//
//  Created by 안종표 on 2021/09/20.
//

import UIKit

class NoticeViewController: UIViewController {
    //5.
    var noticeContents: (title: String, detail: String, date: String)?
    
    //2.
    @IBOutlet weak var noticeView: UIView!
    
    //4.
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //2.
        noticeView.layer.cornerRadius = 6
        //3.이게뭐지?
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    
        //6.
        guard let noticeContents = noticeContents else {return}
        titleLabel.text = noticeContents.title
        detailLabel.text = noticeContents.detail
        dateLabel.text = noticeContents.date
    }
    
    //7.
    @IBAction func doneButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
