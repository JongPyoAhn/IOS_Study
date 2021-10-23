import RxSwift

let disposeBag = DisposeBag()


print("----------publishSubject------------")
let publishSubject = PublishSubject<String>() //선언


publishSubject.onNext("1. 여러분 안녕하세요?")

let subscriber1 = publishSubject
    .subscribe(onNext: {
        print("첫번째 구독자 : \($0)")
    })
    

//위아래가 동일한 onNext
//마블 다이어그램을 떠올리면서 볼것
publishSubject.onNext("2. 들리세요?")
publishSubject.on(.next("3. 안들리시나요?"))
subscriber1.dispose()

//먼저 여러분 안녕하세요?라는 이벤트가 있었고 그 이후에 구독자가 선정됬고 이후에 또 이벤트 2개가 선정됨.

let subscriber2 = publishSubject.subscribe(onNext: {
    print("두번째 구독자 : \($0)")
})


publishSubject.onNext("4. 여보세요")
publishSubject.onCompleted() //옵저버블자체가 컴플릿됫기때문에 다음에 아무리 넥스트해도 읽을수없음.
publishSubject.onNext("5. 끝낫나요")

subscriber2.dispose()
publishSubject
    .subscribe{
        print("세번째 구독 : ", $0.element ?? $0)
    }
    .disposed(by: disposeBag)
publishSubject.onNext("6. 찍힐까요?")
print("----------behaviorSubject------------")
enum SubjectError: Error {
    case error1
}
//behaviorSubject는 반드시 초기값을 가진다.
let behaviorSubject = BehaviorSubject<String>(value: "0. 초기값")

behaviorSubject.onNext("1. 첫번째 값")

behaviorSubject.subscribe{
    print("첫번째 구독 :", $0.element ?? $0)
}
.disposed(by: disposeBag)
//behaviorSubject.onError(SubjectError.error1)

//element가 없다면 이게 어떤이벤트인지 표현해
//비해이버서브젝트는 구독하기 직전이벤트를 받아옴 그래서 구독한시점이전에 위의 온에러이벤트가 발생해서 온에러 이벤트를 자연스럽게 받고있음.
behaviorSubject.subscribe{
    print("두번째 구독 : ", $0.element ?? $0)
}

//비헤이버서브젝트 특징중 하나는 밸류값을 뽑아낼 수 있따.
//원래 옵저버블은 클로저내에서만 subscribe구문에서만 값을 표현함.
//옵저버블밖에서 값을 꺼내보고싶으면 비헤이버서브젝트
//비헤이버 서브젝트는 벨류라는걸 제공함
//가장최신의 온넥스트값을 밸류로 꺼내옴
//(거의안씀)
let value = try? behaviorSubject.value()
print(value)


print("----------replaySubject------------")
//몇개의 버퍼를 가질것인지 정해줄 수 있음.
let replaySubject = ReplaySubject<String>.create(bufferSize: 2)
replaySubject.onNext("1. 여러분")
replaySubject.onNext("2. 힘내세요")
replaySubject.onNext("3. 어렵지만")

replaySubject.subscribe{
    print("첫번째 구독 : ", $0.element ?? $0)
}
.disposed(by: disposeBag)

replaySubject.subscribe{
    print("두번째 구독 : ", $0.element ?? $0)
}
.disposed(by: disposeBag)

replaySubject.onNext("4.할 수 있어요.")
replaySubject.onError(SubjectError.error1)
replaySubject.dispose()

replaySubject.subscribe{
    print("세번째 구독 : ", $0.element ?? $0)
}
.disposed(by: disposeBag)

//첫번째 구독자는 세가지 이벤트가 발생한이후에 구독을 시작햇지만 리플레이서브젝트 덕분에
//두개의 버퍼값을 가져서 두개의 이벤트를 그대로 가져옴
//두번째 구독자도 같은 시점에 시작했기때문에 두개의 이벤트를 그대로 가져왔습니다
//그런다음에 구독자들이 구독을 시작한 이후에 시작한 네번째 이벤트는 잘받고
//이후에 에러도 똑같이 받습니다.
//하지만 세번째 구독자는 에러를 받았는데 우리가 만든 에러가아니고,
//RXswift에서 발생시킨에러임. 이미 디스포즈되었는데 또 서브스크라이브하니까 에러가생김.
