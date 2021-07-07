#  Storage
## URL 알아오기
- 처음에는 무슨소린지 하나도 이해를 못했지만 파일시스템을 공부하고나니 이해가된다. 결론은 URL을 알아온것이다. 공부를 하다보니 알게된점이지만 사람들은 일반적으로 path를 documentDirectory를 많이 쓰더라
- enum방식으로 두 종류의 Directory를 처리한것이다. **.documentDirectory경로** 와 **.cachesDirectory경로** 지금은 이런 경로들이 있구나!라고 알고가면 될것같다. [여기](https://jinnify.tistory.com/26)에 자세하게 설명되어있다.
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

## 저장하기
- 아래 코드에서 볼만한 것은 **[제네릭 제약조건](https://github.com/JongPyoAhn/TodoList/blob/main/Explanation/Generic.md)** 이 걸린것과 **appendingPathComponent** 함수, Codable 을 이용하여 **Json으로 인코딩** 해주고 **형식 이쁘게 변경**해주고 **createFile()**함수를 이용하고 에러처리해준거정도..?
- 위에서 경로지정(?)은 이미 해줫으니 아래에서는 그저 저장절차만 밟으면된다. 저장을 공부하다보니까 다 순서가 있더라.
        1. appendingPathComponent() : url에 해당filename을 가진 경로구성을 추가하고 URL을 리턴한다.</br>
        2. encoder선언
        3. 이쁘게변경
        4. 인코딩 할 객체 넣고 encode
        5. FileManager 싱글톤 이용해서 파일생성
```swift
static func store<T: Encodable>(_ obj: T, to directory: Directory, as fileName: String) {
        //1.
        let url = directory.url.appendingPathComponent(fileName, isDirectory: false)
        print("---> save to here: \(url)")
        //2.
        let encoder = JSONEncoder()
        //3.
        encoder.outputFormatting = .prettyPrinted
        
        do {
            //4.
            let data = try encoder.encode(obj)
            if FileManager.default.fileExists(atPath: url.path) {
                try FileManager.default.removeItem(at: url)
            }
            //5.
            FileManager.default.createFile(atPath: url.path, contents: data, attributes: nil)
        } catch let error {
            print("---> Failed to store msg: \(error.localizedDescription)")
        }
    }
```
