//
//  RoundButton.swift
//  Calculator
//
//  Created by 안종표 on 2021/12/17.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet { //값이 변경된 직후에 호출
            if isRound{
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
