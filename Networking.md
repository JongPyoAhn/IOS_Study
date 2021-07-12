# NetWorking
- Server와 App간의 데이터 주고받기
- 기본적으로는 **HTTP** 라는 방법으로 **RestAPI** 를 이용해서 Json데이터를 주고받음
- URL Session을 이용
<hr/>

## HTTP
- Hyper Text Transfer Protocol
- 서버와 클라이언트간의 다양한 데이터 전달목적으로 만들어진 통신규약
  ### HTTP의 동작방식
    1. App -> Server (Request)
    2. App <- Server (Response)
    3. 클라이언트가 요청을 보내면 서버가 응답하는 방식임
<hr/>

  ### HTTP Request Method
    1. POST : Create = 해당 URL에 새로운 데이터 생성
    2. GET : Read = 해당 URL에서 데이터를 읽고싶을 때
    3. UPDATE : Update = 해당 URL에서 데이터 수정
    4. DELETE : Delete = 해당 URL에서 데이터 삭제
<hr/>

  ### HTTP Request
   - URL : Uniform Resource Locator
    1. URL 통해서 Request 보낼 때
      - Header와 Body로 나누어 보냄
    2. URL 통해서 Response 받을 때
      - Header에는 상태코드(Status code)가 같이 내려옴</br>
      - Body에는 실제 사이트를 그려주기 위한 HTTP content가 옴.</br>
      - content-Type이란? 어떤 포맷의 데이터가 전달될 것이냐를 표시해 주는것.</br>
      ex) text/html, application/Json, image/png, Video/mpeg 등
<hr/>

  ### HLS(HTTP Live Streaming)
    1. HTTP를 이용한 동영상 스트리밍 방법
<hr/>  

  ### HTTP툴 실습(Postman)
     - workspaces-> Myworkspace -> + -> GET설정 -> www.google.com -> send
      - 여기서 나온게 html document이고 이걸 렌더링하면 홈페이지 모습이 나온다.
     - Itunes Search API
      - https://itunes.apple.com/search?media=music&entity=musicVideo&term=Gd
<hr/>

## Concurrency(동시성)
- 한번에 여러개 일을 수행
- App이 보통 하는 일
  1. 사용자 Interaction처리 (작업1) : 메인스레드에서 처리 (메인 스레드는 사용자 인터랙션 처리, 뷰 표시하는 역할)
  2. 네트워킹 (작업2)
  3. 백그라운드에서 파일 다운로드 (작업3)
  4. 파일 저장하고 읽기 (작업4)
  - 이러한 작업들을 Thread라고 함.
  - 스레드(작업)1번 조금하고 2번조금하고 3번하고 ... 이걸 엄청빠르게 진행 이렇게 해야 결과적으로 동시에 일을 수행하는 효과를 가져온다.
<hr/>

## GCD(Grand Central Dispatch)
- 동시성을 제공하기위해 사용하는 API
- [애플공식문서](https://developer.apple.com/documentation/DISPATCH) 에 따르면, 해야할 일(코드블럭)을 만들어서 GCD에 넘기면 시스템에서 알아서 스레드할당해서 안전하게 수행시켜준다고 적혀있다.
- Queue를 이용해서 Task관리
- DispatchQueue를 사용

<hr/>
  ### DisPatchQueue의 타입
    1. MainQueue
      - MainThread에서 작동하는 Queue
      - 사용자 Interaction, 뷰 처리
    2. GlobalQueue
      - 시스템에 의해 관리됨
      - Qos(Quality Of Service) 클래스에 의해 우선순위가 표현됨
        - Qos 우선순위
          1. userInteraction : 바로 수행되어야 할 작업
          2. userInitiated: 거의 바로 수행
          3. default : 2보다 덜 중요
          4. utility : 수초 ~ 수분 걸리는 작업(네트워킹, 파일 불러오기)
          5. bakcground : 사용자 인식에 관계없는 작업(영상 다운로드 등)
     3. CustomQueue
      - 앞서 말한 2개는 시스템에서 제공하는거임
      - 가끔 우리가 직접 생성해서 관리해야한다.
      

<hr/>

## URLSession
