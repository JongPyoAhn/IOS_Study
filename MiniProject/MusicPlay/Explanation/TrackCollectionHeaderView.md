#  TrackCollectionHeaderView
- 컬렉션뷰의 위에 랜덤한 곡을 추천해주기위해 만들어진 해더뷰
## 구성요소
  ```swift
  @IBOutlet weak var thumbnailImageView: UIImageView!
  @IBOutlet weak var descriptionLabel: UILabel!
  ```
## 헤더뷰의 업데이트
  ```swift
   func update(with item: AVPlayerItem) {
        self.item = item
        guard let track = item.convertToTrack() else {return}
        thumbnailImageView.image = track.artwork
        self.descriptionLabel.text = "Today's Pick is \(track.artist)'s Album - \(track.albumName), Let'Listen"
    }
  ```

## 헤더뷰를 탭 했을때의 처리
  ```swift
   @IBAction func cardTapped(_ sender: UIButton) {
        guard let todaysitem = item else {return}
        tapHandler?(todaysitem)
    }
  ```
