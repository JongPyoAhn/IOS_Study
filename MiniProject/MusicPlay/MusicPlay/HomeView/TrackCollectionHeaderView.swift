//
//  TrackCollectionHeaderView.swift
//  MusicPlayer
//
//  Created by 안종표 on 2021/06/28.
//


import UIKit
import AVFoundation

class TrackCollectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: AVPlayerItem?
    var tapHandler: ((AVPlayerItem) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 4
    }
    
    func update(with item: AVPlayerItem) {
        // TODO: 헤더뷰 업데이트 하기
        self.item = item
        guard let track = item.convertToTrack() else {return}
        thumbnailImageView.image = track.artwork
        self.descriptionLabel.text = "Today's Pick is \(track.artist)'s Album - \(track.albumName), Let'Listen"
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        // TODO: 탭했을때 처리
        guard let todaysitem = item else {return}
        tapHandler?(todaysitem)
    }
}
