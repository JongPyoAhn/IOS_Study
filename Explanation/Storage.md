#  Storage
## URL 알아오기
- 처음에는 무슨소린지 하나도 이해를 못했지만 파일시스템을 공부하고나니 이해가된다. 결론은 URL을 알아온것이다. 공부를 하다보니 알게된점이지만 사람들은 일반적으로 path를 documentDirectory를 많이 쓰더라
- enum방식으로 두 종류의 Directory를 처리한것이다. **.documentDirectory경로**와 **.cachesDirectory경로** 지금은 이런 경로들이 있구나!라고 알고가면 될것같다. [여기](https://jinnify.tistory.com/26)에 자세하게 설명되어있다.
- 그리고 마지막에 **FileManager.default**로 FileManager의 싱글톤을 생성해주고 **urls()**함수로 경로와 도메인을 지정(?)해줫다고 보면된다.
```swift
enum Directory {
        case documents
        case caches
        
        var url: URL {
            let path: FileManager.SearchPathDirectory
            switch self {
            case .documents:
                path = .documentDirectory
            case .caches:
                path = .cachesDirectory
            }
            return FileManager.default.urls(for: path, in: .userDomainMask).first!
        }
    }
```

## 
