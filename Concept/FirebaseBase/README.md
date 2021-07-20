# FireBase
- Document에도 잘나와 있고 지금 잘 정리해두면 쓸모가있겠지..
## 기본
- 파이어베이스 데이터베이스의 뿌리(?)를 참조 한다는 의미
  ```swift
  let db = Database.database().reference()
  ```

## 1. Dictionary 형태로 Firebase에 저장
- 오브젝트를 Firebase가 받는 형태 중 하나인 Dictionary형태로 저장한다.
  - 뿌리의 자식 **int** 가 있으면 그냥 value로 3을 넣고 없으면 **int** 생성해서 value삽입 
  ```swift
  db.child("int").setValue(3)
  ```
  - **오브젝트를 딕셔너리로 변경**
  ```swift
  struct Customer: Codable {
    let id: String
    var name: String
    let books: [Book]
    
    //오브젝트를 Firebase에 보내기위해서는 딕셔너리 형태로 변경해서 보내줘야한다.
    var toDictionary: [String:Any] {
        let booksArray = books.map{ $0.toDitionary }
        let dict: [String:Any] = ["id":id,"name":name,"books":booksArray]
        return dict
    }
    static var id = 0
  }
  ```
  - 오브젝트딕셔너리를 파이어베이스에 삽입
  ```swift
  db.child("customers").child(customer1.id).setValue(customer1.toDictionary)
  ```
## 2. Read(Json파싱)
- snapshot -> Json -> Json파싱(Decode)
  ```swift
   let data = try JSONSerialization.data(withJSONObject: snapshot.value, options: []) //snapshot -> Json
   let decoder = JSONDecoder()
   let customers: [Customer] = try decoder.decode([Customer].self, from: data) //Json -> 파싱
  ```
## 3. Update
- Firebase의 데이터를 수정
  ```swift
  db.updateChildValues(["int":6])
  ```

## 4. Delete
- Firebase의 데이터를 삭제
  ```switf
  db.child("customers").removeValue()
  ```
