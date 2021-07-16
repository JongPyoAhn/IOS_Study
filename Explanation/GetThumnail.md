# GetThumnail
## Thumnail가져오기
  - CollectionView를 구성하는 DataSource에서 UICollectionViewCell에서 작성함.
  - 아 참고로 우리는 현재 네트워크를 사용해서 정보를 가져오고 있기 때문에 url로 image 형식을 가져와야된다.
  - 별거없다. 그냥 셀 설정하고 써드파티 라이브러리를 가져다 쓴거다.
  - Movie구조체에 thumnailPath가 저장되어 있다.
  - 원래는 매우 복잡한 방법이지만.. 남이 만들어 놓은거 가져다 쓰면 이렇게 편리하다 ㅎㅎ
  - 코드한줄로 완성해버렸다..
  ```swift
    let movie = movies[indexPath.item]
    //imagePath(String) -> image
    let url = URL(string: movie.thumnailPath)
    //아래코드가 핵심
    cell.movieThumnail.kf.setImage(with: url) 
  ```

## 외부코드 가져다 쓰기
방법 1. SPM(SwiftPackageManager)<br/>
방법 2. CocoaPod<br/>
방법 3. Carthage
  ### 여기서는 SPM을 사용했다.
  1. File
  2. Swift Packages
  3. Add Package Dependency
  4. 검색창에 내가 찾은 깃헙주소 넣으면 된다.
  5. 그리고 잊지말고 import
  ```swift
  import Kingfisher
  ```
