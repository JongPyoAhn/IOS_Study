//
//  CreditCard.swift
//  creditcardRecommended
//
//  Created by 안종표 on 2021/09/17.
//

import UIKit

//데이터를 읽고 쓰기위해 json encoding, decoding
//PromotionDetail은 Depth를 한번 더 가지기 때문에 추가적으로 객체를 만들어줌.
struct CreditCard: Codable {
    let id: Int
    let rank: Int
    let name: String
    let cardImageURL: String
    let promotionDetail: PromotionDetail
    let isSelected: Bool? //사용자가 카드를 선택했을 때 사용
}

struct PromotionDetail: Codable {
    let companyName: String
    let period: String
    let amount: Int
    let condition: String
    let benefitCondition: String
    let benefitDetail: String
    let benefitDate: String
}
