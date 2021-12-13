//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 안종표 on 2021/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "죽음", name: "벤다이크"),
        Quote(contents: "나는 나", name: "비용"),
        Quote(contents: "편견", name: "암브로스빌"),
        Quote(contents: "분노", name: "아인슈타인"),
        Quote(contents: "몇 번이라도 좋다!", name: "니체"),
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수를 만들어줌
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

