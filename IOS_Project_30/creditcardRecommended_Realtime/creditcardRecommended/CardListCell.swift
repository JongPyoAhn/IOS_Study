//
//  CardListCell.swift
//  creditcardRecommended
//
//  Created by 안종표 on 2021/09/17.
//

import UIKit

class CardListCell: UITableViewCell {
    @IBOutlet weak var cardImageView: UIImageView!
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var promotionLabel: UILabel!
    @IBOutlet weak var cardnameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
