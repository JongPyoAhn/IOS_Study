#  Todo
## mutating
- 구조체 내부에서 데이터를 수정할 때 사용
- update를 써서 구조체내부의 데이터를 수정한 이유는 Todo의 ID는 안바뀌는데 나머지는 변경가능한것들이라서 그런것같다.
```swift
mutating func update(isDone: Bool, detail: String, isToday: Bool) {
        self.isDone = isDone
        self.detail = detail
        self.isToday = isToday
    }
```
## Equatable
- 프로토콜이다.
- 클래스나 구조체의 인스턴스를 비교할 때 주로 사용한다.
- Int, Double, Bool등 타입들은 이미 Equatable을 갖고 있다고 생각하면 된다.
- 쓰고싶으면 아래와 같이 사용할 구조체 안에서 정의를 해줘야함.
```swift
static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.id == rhs.id
   }
```
## 타입프로퍼티
- 클래스나 구조체 내에서 static으로 선언된 프로퍼티
- 인스턴스 생성안해도 타입만알면 사용가능
- 클래스에서 struct에서 변수저장하듯이 하는거같다.
```swift
class TodoManager{
  static var lastId = 0
}
```
## filter
- 원하는 배열같은거 뒤에 쓰면 되는데 말그대로 조건을 주면 조건에 맞는거만 갖고온다(?)
```swift
var todayTodos: [Todo] {
        return todos.filter { $0.isToday == true }
    }
```
