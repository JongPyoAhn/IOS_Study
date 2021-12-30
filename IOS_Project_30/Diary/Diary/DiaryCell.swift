//
//  DiaryCell.swift
//  Diary
//
//  Created by 안종표 on 2021/12/29.
//

import UIKit

class DiaryCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    //이 생성자는 UIView가 스토리보드에서 생성될떄 이 생성자를 통해객체가생성이된다.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.contentView.layer.cornerRadius = 3.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.black.cgColor
    }
    
}
