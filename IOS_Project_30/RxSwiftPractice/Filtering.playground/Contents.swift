import RxSwift


let disposedBag = DisposeBag()
print("------------ignoreElements------------")
let sleepMode = PublishSubject<String>()

//놀랍게도 ignoreElements()는 onNext이벤트는 다무시함.
sleepMode
    .ignoreElements()
    .subscribe{
        print($0)
    }
    .disposed(by: disposedBag)

sleepMode.onNext("😇")
sleepMode.onNext("😇")
sleepMode.onNext("😇")
sleepMode.onCompleted()

print("-------------elemnetAt-------------")
let twice = PublishSubject<String>()

//element at은 정해진 인덱스에해당되는 onNext이벤트만 방출한다.
twice
    .element(at: 2)
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposedBag)

twice.onNext("😇")
twice.onNext("😇")
twice.onNext("😍")
twice.onNext("😇")

print("-------------filter--------------")
Observable.of(1, 2, 3, 4, 5, 6, 7, 8)
    .filter{ $0 % 2 == 0}//짝수만 방출하고싶어.
    .subscribe(onNext:{
        print($0)
    })
    .disposed(by: disposedBag)


print("-------------skip--------------")
//첫번째 요소를 기준으로 처음부터 몇개를 스킵할건지를 적는거임.
Observable.of("😂", "😍", "😇", "😁", "☺️")
    .skip(3)
    .subscribe(onNext:{
        print($0)
    })
    .disposed(by: disposedBag)


print("-------------skipWhile--------------")
//스킵할로직을 구성하고 해당로직이 false가 되었을 때 부터 방출을함.
Observable.of("😂", "😍","💀" ,  "😇", "😁", "☺️")
    .skip(while: {
        $0 != "💀"
    })
    .subscribe(onNext:{
        print($0)
    })
    .disposed(by: disposedBag)

print("-------------skipUntil--------------")
//현재 옵저버블은 time옵저버블이 온넥스트 이벤트를 방출하기전까지 모든이벤트를 무시함.
let customer = PublishSubject<String>()
let time = PublishSubject<String>()

customer
    .skip(until: time)
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposedBag)

customer.onNext("😂")
customer.onNext("😍")

time.onNext("땡!")
customer.onNext("😍")


print("-------------take--------------")
//스킵의 반대개념이다. 어떤요소를 취하고싶을 때 사용하는 연산자.
//처음부터 3개의 값을 취하는걸 볼 수 있따.
Observable.of("😂", "😍","💀" ,  "😇", "😁")
    .take(3)
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposedBag)

print("-------------takeWhile--------------")
//조건달성하기전까지의 이벤트를 방출
Observable.of("😂", "😍","💀" ,  "😇", "😁")
    .take(while: {
        $0 != "💀"
    })
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposedBag)
    
print("-------------enumerated--------------")
//기존에는 엘레멘트만 방출했다면 이건 인덱스를 같이 표현해줌.
Observable.of("😂", "😍","💀" ,  "😇", "😁")
    .enumerated()
    .take(while: {
        $0.index < 3
    })
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposedBag)

print("-------------takeUntil--------------")
//신청마감이 되기전에 들어온사람들은 모두들어왔지만, 마감뒤에는 안들어옴.
let request = PublishSubject<String>()
let deadLine = PublishSubject<String>()

request
    .take(until: deadLine)
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposedBag)

request.onNext("👰‍♀️")
request.onNext("👩‍🎨")

deadLine.onNext("끝!")
request.onNext("ㅇㅇ")

print("-------------distinctUntilChanged--------------")
//중복제거
Observable.of("저는", "저는", "앵무새", "앵무새", "입니다.", "입니다.")
    .distinctUntilChanged()
    .subscribe(onNext: {
            print($0)
    })
    .disposed(by: disposedBag)
