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

## 트랙 로드하기
- [Bundle](https://developer.apple.com/documentation/foundation/bundle)
  - 갖고 있는 자원(앱안에 있는것들)을 불러올때 사용한다고 생각하면 될듯하다.
  - forResourcesWithExtension는 확장자를 뜻한다.
  ```swift
  let urls = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil) ?? []
  ```
- [map](https://developer.apple.com/documentation/swift/array/3017522-map)
  - 클로저안에 주어진 요소를 배열의 형태로 저장가능하게 리턴해준다고 보면된다.
  - 현재는 URL타입의 urls를 매핑하여 AVPlayerItem의 배열형태로 리턴(urls에 있는 url을 가져와서 매개변수로 AVPlayerItem에 넣은거임)
  ```swift
  let items = urls.map {
            url in
            return AVPlayerItem(url:url)
        }
  ```
  
## 인덱스에 맞는 트랙 로드하기
  ```swift
  func track(at index: Int) -> Track? {
        let playerItem = tracks[index]
        let track = playerItem.convertToTrack()
        return track
    }
   ```

## 앨범 로드하기
- 트랙의 배열을 받아서 하나의 앨범으로 로드하는 메소드임(가수한명이 앨범낼때 한번에 여러곡 내니까)
- [compactMap](https://developer.apple.com/documentation/swift/sequence/2950916-compactmap)
  - nil이 아닌 것들을 배열의 형태로 리턴해준다고 보면 된다.
  ```swift
  let trackList: [Track] = tracks.compactMap{ $0.convertToTrack()}
  ```
- [Ditionary Grouping](https://developer.apple.com/documentation/swift/dictionary/3127163-init)
  - grouping에는 그룹화 하고싶은 배열을 넣고, by에는 기준(?)을 적어주면 된다.
  - 아래에서는 trackList를 그룹화하기 위해서 trackList에 있는 track의 albumName으로 그룹화 했다. (트랙의 albumName이 같은거끼리 묶는다고 보면됨)
  ```swift
  let albumDics = Dictionary(grouping: trackList, by: { (track) in
            track.albumName 
            })
  ```
- Dictionary의 일반적인 생성
  - 널리 사용되는 Dictionary의 생성 방법이다.
  ```swift
  for (key, value) in albumDics{
            let title = key
            let tracks = value
            let album = Album(title: title, tracks: tracks)
            albums.append(album)
        }
   ```
   
## 오늘의 트랙 랜덤으로 선택
  - 배열의 [randomElement()](https://developer.apple.com/documentation/swift/array/2994747-randomelement)를 사용하여 트랙중 랜덤한것을 리턴하도록 하였다. 
  ```swift
  self.todaysTrack = self.tracks.randomElement()
  ```
