# Generic
- 제네릭공부를 시작하게된 계기가 있다. 아래함수가 도통 무슨소린지 알기어려워서,,,
```swift
static func store<T: Encodable>(_ obj: T, to directory: Directory, as fileName: String) {}
```
- 자, 여기서 쓰인 T는 Plcaeholder로 그냥 타입이라고 보면된다. 하지만, 함수가 호출될때 마다 타입이 결정된다는걸 곁들인...
## 타입제약
- T는 Encodable프로토콜을 준수해야한다는 타입제약이 걸렸다.
- 그리고 obj는 그냥 프로토콜을 준수하면되고 알아서 타입이 결정될 것이다.
