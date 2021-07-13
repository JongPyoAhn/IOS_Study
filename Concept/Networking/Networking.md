# Network
## 1. URL 설정(?)
    - Response하기 위해서는 정보를 Request할 URL이 필요하다.
    - URLComponents를 사용해줬고 쿼리를 따로 지정해줄수 있다는게 장점이다.
    ```swift
    var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")!
    let mediaQuery = URLQueryItem(name: "media", value: "music")
    let entityQuery = URLQueryItem(name: "entity", value: "song")
    let termQuery = URLQueryItem(name: "term", value: "지드래곤")
    urlComponents.queryItems?.append(mediaQuery)
    urlComponents.queryItems?.append(entityQuery)
    urlComponents.queryItems?.append(termQuery)
    
    let requestURL = urlComponents.url!
    ```

## 2. Configuration 선언
    ```swift
    let config = URLSessionConfiguration.default
    ```
## 3. URLSession생성
    ```swift
    let session = URLSession(configuration: config)
    ```
## 4. 받고싶은 형태의 구조체 선언(구조체 변수로 받을 데이터 이름이 다르다면 CodingKey사용)
    - Codable은 Encoding과 Decoding 프로토콜을 둘다 가지고 있다고 보면된다.
    - Response구조체는 우리가 가져오려하는 데이터를 감싸고있는것을 받아올것이다.
    - Track구조체는 내가 받고싶은 데이터만 적어놓은것.
    - CodingKey는 내가 사용한 변수명과 원래데이터명이 다를경우 사용해준다.
    
    ```swift
    struct Response: Codable {
        let resultCount: Int
        let tracks: [Track]
        
        enum CodingKeys: String, CodingKey{
            case resultCount
            case tracks = "results"
        }
    }

    struct Track: Codable {
        let title: String
        let artistName: String
        let thumnailPath: String
        
        enum CodingKeys: String, CodingKey {
            case title = "trackName"
            case artistName
            case thumnailPath = "artworkUrl30"
            
        }
    ```
## 5. dataTask생성
    - 설명은 아래 주석
    ```swift
    let dataTask = session.dataTask(with: requestURL, completionHandler: { (data, response, error) in
        //에러처리
        guard error == nil else {return}
        //statusCode 확인
        guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {return}
        //HTTP에서 2xx는 성공이다.
        let successRange = 200..<300
        guard successRange.contains(statusCode) else {return}
        //response에 적힌 데이터들 가져옴
        guard let resultData = data else {return}
        //아래 코드는 가져온 데이터에 한글이 적혀있을경우 사용
        //let resultString = String(data: resultData, encoding: .utf8)!

        do{
            //디코더생성
            let decoder = JSONDecoder()
            //디코드(resultData에 받은 데이터들을 Response형태로 Decode해줌)
            let response = try decoder.decode(Response.self, from: resultData)
            let tracks = response.tracks
            
            print("--> tracks : \(tracks.count) - \(tracks.last?.title) - \(tracks.last?.thumnailPath)")
        }catch let error{
            print("---> error : \(error.localizedDescription)")
        }
    })
    ```
## 6.  dataTask 실행
    ```swift
    dataTask.resume()
    ```
