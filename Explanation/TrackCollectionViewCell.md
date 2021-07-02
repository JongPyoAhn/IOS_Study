# TrackCollectionViewCell
## 필요한 구성요소 정의
  ```swift
   @IBOutlet weak var trackThumbnail: UIImageView!
   @IBOutlet weak var trackTitle: UILabel!
   @IBOutlet weak var trackArtist: UILabel!
  ```
## awakeFromNib()
  - 객체가 초기화된 후 호출된다.(메인함수랑 비슷한 의미인데 호출시기만 다른거 같다.)
  ```swift
  override func awakeFromNib() {
        super.awakeFromNib()
        trackThumbnail.layer.cornerRadius = 4
        trackArtist.textColor = UIColor.systemGray2
    }
  ```
## 구성될 셀마다의 곡정보를 업데이트 해주기
   ```swift
   func updateUI(item: Track?) {
        guard let track = item else {return }
        trackThumbnail.image = track.artwork
        trackTitle.text = track.title
        trackArtist.text = track.artist
    }
   ```
