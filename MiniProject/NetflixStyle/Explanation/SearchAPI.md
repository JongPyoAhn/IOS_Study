# SearchAPI
## search()함수 구현
  - 인스턴스를 생성할 필요 없이 SearchBar에서 검색어를 받아서 바로 검색할거기 때문에 static을 사용한다.(타입 메소드)
  - 인자에 **@escaping** 을 사용했는데 completion의 코드블럭이 메소드 바깥에서 실행될 수 있게 하기 위함.(함수가 끝나고 실행)
  - 네트워크 연결하는 부분은 이미 공부했기 때문에 생략하는데 중요하다고 생각되는 부분을 짚고 넘어가면 아래 코드를 보면 URL을 한번에 입력안하고 **URLComponents** 를 사용하였다.
  ```swift
  static func search(_ term: String, completion: @escaping ([Movie]) -> Void){
  // ...
  let termQuery = URLQueryItem(name: "term", value: term)
  // ...
  ```
  
  - 이 부분에서 크랙이 한번 발생했는데.. MainThreadChecker가 체크해줬다.
  - 발생한 이유는 reloadData()의 경우 UI를 처리하는 Thread에서 불려야하는데 엉뚱한 네트워크 Thread에서 쓰이고 있기 때문..!!
  - 네트워크는 느려터진 쓰레드..  **메인이 아닌 다른 스레드를 통해 결과 Data를 UI로 업데이트 시켜야 하는경우에는 Thread를 넘나들어야됨**
  ```swift
  DispatchQueue.main.async {
                self.movies = movies
                self.resultCollectionView.reloadData()
            }
  ```
  
  
  
  - parseMovies는 data(JSon형태)가 저장되있는 resultData를 Response구조체에 알맞게 decode하는 함수이다.
  ```swift
  static func parseMovies(_ data: Data) -> [Movie] {
        let decoder  = JSONDecoder()
        do{
            let response = try decoder.decode(Response.self, from: data)
            let movies = response.movies
            return movies
        }catch let error{
            print(error.localizedDescription)
            return []
        }
   }
  ```
  - movies구조체도 있지만 구성만 다르지 같은 메커니즘.. 그냥 내가 받고싶은대로 받기위해서 CodingKey 사용한거다.
  ```swift
  struct Response: Codable {
    let resultCount: Int
    let movies: [Movie]
    
    enum CodingKeys: String, CodingKey{
        case resultCount
        case movies = "results"
      }
  }
  ```
