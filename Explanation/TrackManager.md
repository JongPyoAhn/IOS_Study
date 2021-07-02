#  TrackManager
- 곡들을 로딩하고, 로딩한 곡들을 세팅하고, 로딩한 곡들에서 해당하는 인덱스에 있는 트랙을 내보내고 앨범도 로딩하고 오늘의 음악도 로딩하기위한 클래스
## **AVFoundation FrameWork사용**
- 미디어에 관련된 필요객체들을 가진 공구함정도로 생각하면 될듯.
- 주로 재생과 관련된 기능을 구현할 때 사용
```swift
import AVFoundation
```

## 프로퍼티 정의하기
- **[AVPlayerItem](https://developer.apple.com/documentation/avfoundation/avplayeritem)**
  - AVAsset객체의 참조를 저장한다라고 되어있는데 AVAsset을 참조한다는 말 같다.
- **[AVAsset](https://developer.apple.com/documentation/avfoundation/avasset)**
  - 하나이상의 AVAssetTrack을 담고있는 보관장소(?)라고 보면될거같다.
  - 트랙, 캡션, 주제, metadata 등을 포함한다고 한다.
- 한마디로 AVPlayerItem 하나에는 내가 재생하고싶은 음악에 대한 필수적인 요소들이 들어간다고 보면된다.
```swift
  var tracks: [AVPlayerItem] = []
  var albums: [Album] = []
  var todaysTrack: AVPlayerItem?
 ```

