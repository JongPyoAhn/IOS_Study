#  PlayerViewController
## 싱글톤 사용
  ```swift
  let simplePlayer = SimplePlayer.shared
  ```

## [viewWillDisappear](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621485-viewwilldisappear)
- 뷰를 나가는 상황을 처리할 수 있음.
- 뷰를 나갈 떄는 음악재생이 중지되고 현재 simplePlayer의 item이 없어야됨.
  ```swift
  simplePlayer.pause()
  simplePlayer.replaceCurrentItem(with: nil)
  ```
## beginDrag, endDrag
- bool값을 이용해서 true이면 현재 slider를 움직이고 있는것이고 false이면 슬라이더를 움직이지 않는것
  ```swift
  isSeeking = true
  ```
## Seeking 구현
- 음악이 재생되는 시간대로 슬라이더가 움직이도록 함
  ```swift
   @IBAction func seek(_ sender: UISlider) {
        guard let currentItem = simplePlayer.currentItem else {return}
        let position = Double(sender.value)
        let seconds = position * currentItem.duration.seconds
        let time = CMTime(seconds: seconds, preferredTimescale: 100)
        simplePlayer.seek(to: time)
    }
  ```
## PlayerView 트랙정보 업데이트
  ```swift
  guard let track = simplePlayer.currentItem?.convertToTrack() else {return}
  thumbnailImageView.image = track.artwork
  titleLabel.text = track.title
  artistLabel.text = track.artist
  ```
## 슬라이더아래 시간정보 업데이트
- 재생중인시간과 결과시간을 String형태로 변환하여 텍스트에 삽입
  ```swift
  currentTimeLabel.text = secondsToString(sec: simplePlayer.currentTime)
  totalDurationLabel.text = secondsToString(sec: simplePlayer.totalDurationTime)
  ```
## 플레이버튼 재생/멈춤
  ```swift
  if simplePlayer.isPlaying{
    let configuration = UIImage.SymbolConfiguration(pointSize:40)
    let image = UIImage(systemName: "pause.fill", withConfiguration: configuration)
    playControlButton.setImage(image, for: .normal)
  }else {
    let configuration = UIImage.SymbolConfiguration(pointSize:40)
    let image = UIImage(systemName: "play.fill", withConfiguration: configuration)
    playControlButton.setImage(image, for: .normal)
  }
  ```
  
