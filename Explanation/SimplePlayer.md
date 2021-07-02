#  SimplePlayer
- 플레이어뷰에서 사용할 기능정의, 싱글톤 생성
## 싱글톤 생성
  - [싱글톤 패턴](https://babbab2.tistory.com/66)이란?
    - 특정 용도로 객체를 하나만 생성하여, 공용으로 사용하고 싶을 때 사용하는 디자인 유형
  ```swift
  static let shared = SimplePlayer()
  ```
  
## AVPlayer정의
  ```swift
  private let player = AVPlayer()
  ```
## 현재시간 구하기
  ```swift
  player.currentItem?.currentTime().seconds ?? 0  
  ```
## 전체시간 구하기
  ```swift
  player.currentItem?.duration.seconds ?? 0
  ```
## 현재 재생중인 아이템 구하기
  ```swift
  player.currentItem
  ```
## 멈추기    
  ```swift
  player.pause()
  ```
## 재생하기
  ```swift
  player.play()
  ```
## 재생중인 시간대 찾기
  ```swift
   func seek(to time:CMTime) {
        player.seek(to: time)   
    }
  ```
## AVPlayerItem 바꾸기(?)
  ```swift
   func replaceCurrentItem(with item: AVPlayerItem?) {
        player.replaceCurrentItem(with: item)
    }
  ```

  
- 싱글톤 패턴 출처 : https://babbab2.tistory.com/66
