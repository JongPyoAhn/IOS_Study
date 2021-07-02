# IOS 뮤직플레이어
다양한 방면의 IOS를 경험해보고자 연습한 음악재생 프로젝트입니다.
## 알게된 기술 및 정의
- AVFoundation FrameWork
- Singleton Pattern
- CollectionView
- DelegateFlowLayout
- Bundle
- metadata
- map, compactmap
- Dictionary grouping
- DarkMode

## [Section 1] [Protocol](https://github.com/JongPyoAhn/MusicPlay/blob/main/Explanation/HomeViewController.md)
- DataSource, Delegate, DelegateFlowLayout을 사용하여 CollectionView의 프로토콜을 정의
## [Section 2] [TrackCollectionViewCell](https://github.com/JongPyoAhn/MusicPlay/blob/main/Explanation/TrackCollectionViewCell.md)
- 트랙에서 음악의 목록을 표현하는 셀로 DataSource에서 셀을 표현하고 재사용 하기 위해 생성
## [Section 3] [TrackManager](https://github.com/JongPyoAhn/MusicPlay/blob/main/Explanation/TrackManager.md)
- 트랙로드 등 트랙을 관리하는데 필요한 메서드들을 정의
## [Section 4] [TrackCollectionHearderView](https://github.com/JongPyoAhn/MusicPlay/blob/main/Explanation/TrackCollectionHeaderView.md)
- 헤더뷰의 구성요소와 헤더뷰를 표현하기위한 메서드들을 정의
## [Section 5] [SimplePlayer](https://github.com/JongPyoAhn/MusicPlay/blob/main/Explanation/SimplePlayer.md)
- 앱 내에서 한명의 사용자만 다루고 필요할 때 마다 편리하게 호출하기위해 싱글톤 패턴 사용
## [Section 6] [PlayerViewController](https://github.com/JongPyoAhn/MusicPlay/blob/main/Explanation/PlayerViewController.md)
- 음악을 재생하고 곡에대한 정보표시, 시간표시, 슬라이더의 움직임, CMTime의 활용, Seeking 
