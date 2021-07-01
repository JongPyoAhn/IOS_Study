# HomeViewController
## UICollectionViewDataSource
### 셀의 개수
- TrackManager를 이용하여 트랙갯수 가져오기.
### 셀의 표현
- dequeueReusableCell 함수로 cell을 재사용하고 TrackCollectionViewCell에서 정의한 updateUI를 이용하여 cell을 최신화
### 헤더뷰 표현
- ㅇㅇㅇㅇㅇ
## UICollectionViewDelegate
### 클릭했을때의 처리
- 곡을 클릭하면 PlayerView를 띄움
- ** 스토리보드를 불러오는 방법 **
  1. init()함수를 사용해서 필요한 스토리보드를 가져옴
  ```swift
  let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil)
  ```
  2. instantiateViewController()함수를 사용해서 뷰컨트롤러가 만들어 질 때 마다 데이터를 초기화하고 새로운 인스턴스를 생성(PlayerViewController를 변수에 넣고 사용한다는 의미나 마찬가지)
  (이유 : 플레이어가 다른 곡을 선택할 때 마다 새로운 곡이 나와야 한다.)
  ```swift
  guard let playerVC = playerStoryboard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController else {return}
  ```
  3. present()함수를 사용
  ```swift
  present(playerVC, animated: true, completion: nil)
  ```
