# FileManager
1. FileManager 인스턴스 생성
- default는 FileManager의 싱글톤 인스턴스를 만들어줌.
```swift
let fileManager = FileManager.default
```
2. urls는 지정된 공통 디렉토리에 대한 URL배열을 리턴해주는 메소드
- for과 in에 들어가는 인수는 고정적이라고 보면될듯(?)
```swift
let documnetsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
```
3. 파일 이름지정(경로추가)
```swift
let fileURL = documnetsURL.appendingPathComponent("우하하.txt")
```
4. 글 쓰기 사전작업
```swift
let myTextString = NSString(string: "HI WORLD")
```
5. 글 쓰기(I/O라서 try로 옵셔널하게 처리)
```swift
try? myTextString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8.rawValue)
```
