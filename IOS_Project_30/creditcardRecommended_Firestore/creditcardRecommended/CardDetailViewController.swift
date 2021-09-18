//
//  CardDetailViewController.swift
//  creditcardRecommended
//
//  Created by 안종표 on 2021/09/17.
//

import UIKit
import Lottie
class CardDetailViewController: UIViewController {
    //26.
    var promotionDetail: PromotionDetail?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var benefitConditionLabel: UILabel!
    @IBOutlet weak var lottieView: AnimationView!
    
    @IBOutlet weak var benefitDateLabel: UILabel!
    @IBOutlet weak var benefitDetailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = AnimationView(name: "money") //파일명
        lottieView.contentMode = .scaleAspectFit //이미지뷰 설정과 비슷
        lottieView.addSubview(animationView) //서브뷰를 추가하는거임
        animationView.frame = lottieView.bounds
        animationView.loopMode = .loop //어떻게 반복을 줄거냐
        animationView.play()
        
        
    }
    //27.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let detail = promotionDetail else {return}
        titleLabel.text = """
            \(detail.companyName)카드 쓰면
            \(detail.amount)만원 드려요
            """
        periodLabel.text = "\(detail.period)"
        conditionLabel.text = "\(detail.condition)"
        benefitConditionLabel.text = "\(detail.benefitCondition)"
        benefitDetailLabel.text = "\(detail.benefitDetail)"
        benefitDateLabel.text = "\(detail.benefitDate)"
        
    }

    

}
