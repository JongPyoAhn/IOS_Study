# NetWorking
- Server와 App간의 데이터 주고받기
- 기본적으로는 **HTTP** 라는 방법으로 **RestAPI** 를 이용해서 Json데이터를 주고받음
- URL Session을 이용
## HTTP
- Hyper Text Transfer Protocol
- 서버와 클라이언트간의 다양한 데이터 전달목적으로 만들어진 통신규약
  ### HTTP의 동작방식
    1. App -> Server (Request)
    2. App <- Server (Response)
    3. 클라이언트가 요청을 보내면 서버가 응답하는 방식임

  ### HTTP Request Method
    1. POST : Create = 해당 URL에 새로운 데이터 생성
    2. GET : Read = 해당 URL에서 데이터를 읽고싶을 때
    3. UPDATE : Update = 해당 URL에서 데이터 수정
    4. DELETE : Delete = 해당 URL에서 데이터 삭제
  
  ### HTTP Request
   - URL : Uniform Resource Locator
    1. URL 통해서 Request 보낼 때
      - Header와 Body로 나누어 보냄
    2. URL 통해서 Response 받을 때
      - Header에는 상태코드(Status code)가 같이 내려옴
      - Body에는 실제 사이트를 그려주기 위한 HTTP content가 옴.
      - content-Type이란? 어떤 포맷의 데이터가 전달될 것이냐를 표시해 주는것.
      ex) text/html, application/Json, image/png, Video/mpeg 등

### HLS(HTTP Live Streaming)
  1. HTTP를 이용한 동영상 스트리밍 방법
    
## Concurrency

## GCD



## URLSession
