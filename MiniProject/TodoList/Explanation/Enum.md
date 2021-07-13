# Enum
## 정의
- 열거형이라고 불린다.
- 프로그래머가 정의해준 항목 값 외에는 추가/수정이 불가능하다.
- 모든 열거형의 데이터 타입은 같은타입으로 취급한다.
- 다음과 같은경우 요긴하게 쓰인다.
```
- 제한된 선택지를 주고싶을 떄
- 정해진 값 외에는 입력받고 싶지 않을 때
- 예상된 입력 값이 한정되어 있을 때
```
## 기본 열거형
1. 선언
```swift
enum School {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}
```
2. 열거형 변수의 생성 및 값 변경
  - 여기서 enum의 특징인 정의해준 값 외에는 추가/수정불가능하다가 나오는거같다. 
```swift
var highestEducation: School = School.college
// 위 코드와 같은 표현
var highestEducation: School = .college
// 같은 타입인 School 내부의 항목으로만 값을 변경
highestEducation = .graduate
```

## 원시 값
- 그냥 초기 변수에 값을 지정해준 값이 원시값
1. 원시값 지정과 사용
  - 원시값 사용하고 싶으면 .rawValue 쓰는 것 같다.
```swift
enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}
let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 입니다.")
// 저의 최종학력은 대학교 입니다.
```

# CaseIterable
## 항목순회
- 열거형의 모든 케이스를 알아야 할 때 사용 (주로 배열의 형태로 저장할 때 사용하는듯)
- CaseIterable 프로토콜의 allCases프로퍼티 사용
```swift
enum School:Int, CaseIterable {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}
let a: [School] = School.allCases
print(a)
```

