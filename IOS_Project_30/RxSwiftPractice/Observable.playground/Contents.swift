import Foundation
import RxSwift

/*
 기본개념
 Observable은 시퀀스와 동일하다.
 Observable은 다른 클래스에서 만든 값을 시간에 따라서 읽을 수가 있음.
 하나 이상의 Observer(관찰자)가 실시간으로 이벤트에 반응
 next는 최신 데이터를 전달하는 역할
 
 */

/*Observable은 next이벤트를 통해서 각각의 값들을 방출함
Observable생명주기
 Observable은 어떤 구성요소를 가지는 next이벤트를 계속해서 방출할 수 있다.
 Observable은 error이벤트를 방출하여 완전 종료될 수 있다.
 Observable은 complete 이벤트를 방출하여 완전 종료될 수 있다.
 
 
 
 */
//<>를이용해서 next를 통해서 어떠한 형태의 element를 방출할 것인지를 표현
//<Int> Int를 방출할거임
//just라는 연산자를 통해서 하나의 엘리멘트만 방출하는 단순한형태의 오퍼레이터

print("----Just----")
Observable<Int>.just(1)
    .subscribe(onNext: {
        print($0)
    })

//of라는 연산자를 통해서 하나이상의 이벤트들을 넣을 수 있음(쉼표로구분)
print("----Of1----")
Observable<Int>.of(1, 2, 3, 4, 5)
    .subscribe(onNext: {
        print($0)
    })

//Observable의 타입은 자동으로 추론되서 이렇게 적으면 하나의 어레이를 내뿜는 옵저버블
//그래서 사실상 just를 사용한 것과 같음
//각각의 엘리먼트들을 내뿜고싶으면 어레이전체말고 엘레멘트들을 하나씩 넣을것.
print("----Of2----")
Observable.of([1, 2, 3, 4, 5])
    .subscribe(onNext: {
        print($0)
    })

//from은 Array형태의 엘레멘트만 받음
//of와 달리 자동적으로 Array의 엘레멘트들을 하나씩 꺼내서 방출
print("----from----")
Observable.from([1, 2, 3, 4, 5])
    .subscribe(onNext: {
        print($0)
    })

//Observable은 subscribe(구독)되기 전에는 그냥 시퀀스 정의일뿐임 어떠한 이벤트도 내보내지 않음.

//next이벤트 속에서 1이라는 엘레멘트를 뱉는다고 알려주고 최종적으로 컴플리트를 뱉는다고 이벤트를 그대로 보여줌.
//그냥 subscribe를 이용하면 이렇게 어떠한 이벤트안에 어떠한 값이 싸여서오고 컴플리트이벤트가 발생했는지를 확인해줌
print("----------subscribe1---------")
Observable.of(1,2,3)
    .subscribe{
        print($0)
    }

print("----------subscribe2---------")
Observable.of(1, 2, 3)
    .subscribe{
        if let element = $0.element {
            print(element)
        }
    }

print("----------subscribe3---------")
Observable.of(1, 2, 3)
    .subscribe(onNext: {
        print($0)
    })


//엘레멘트를 하나도 가지지 않는 옵저버블을 만들때 empty를 사용함
//아무런 이벤트도 발생하지 않음.
//타입으로 <Void>를 넣어주면 complete가 표현됨
//empty는 아무런 요소를 가지지 않아서 타입추론할 수 없음 따라서 타입을 명시적으로 표시해줘야 나온거임
//용도 : 즉시 종료할수있는 옵저버블을 리턴하고싶을 때, 의도적으로 0개의 값을 옵저버블을 리턴하고 싶을 때
print("----------empty---------")
Observable<Void>.empty()
    .subscribe{
        print($0)
    }

//complete조차 프린트되지않음 타입을 적어줘도 안됨.
//이코드가 제대로 작동하는지 어떻게확인할까? debug라는 연산자를 쓰면됨 썻더니 never가 subscribe됬어 라고 알려줌
//never연산자는 작동은 하지만 아무것도 내뱉지 않는다.
print("----------never---------")
Observable.never()
    .debug("never")
    .subscribe(onNext: {
        print($0)
    },
               onCompleted: {
        print("complete")
    }
    )

//range는 스타트부터 카운트만큼의 1씩증가하는 배열을 만듦
print("----------range---------")
Observable.range(start: 1, count: 9)
    .subscribe(onNext: {
        print("2*\($0) = \(2*$0)")
    })


//옵저버블을 구독해야지만 원하는 값들을 받을수 있는데, dispose는 구독을 취소하는거임.
//여기서는 수가 적지만, 무한한요소로 반복되는 시퀀스라면 반드시 dispose를 호출해야만 completed가 프린트됨.
print("----------Dispose---------")
Observable.of(1, 2, 3)
    .subscribe(onNext: {
        print($0)
    })
    .dispose()

//위에 처럼 각각의 구독에 관해서 일일이 하나씩 관리하는건 효율적이지 않음
//disposeBag은 disposed(by:)메소드를 통해서 추가를 할 수 있는데, 여기에는 disposable을 가지고 있음.
//disposable은 disposebag이 할당해제하려고 할 때마다 dispose를 호출함
//서브스크라이브로부터 방출된 리턴값을 disposeBag에 추가하는거임.
//이렇게 disposeBag이 다 가지고 있다가 자신이 할당해제할 때 모든 구독에 대해서 dispose를 날리는거임.
//왜 이렇게 할까? dispose해주지 않으면 observable이 끝나지 않기 때문에 메모리누수가 일어남.
//따라서 매번 옵저버블을 만들고 구독하고 디스포즈해주는걸 생명주기(?)로 이해하고 사용할것.
print("----------DisposeBag---------")
let disposeBag = DisposeBag()
Observable.of(1, 2, 3)
    .subscribe{
        print($0)
    }
    .disposed(by: disposeBag)

//create라는거는 escaping클로저임 AnyObserver를 취한다음에 disposable이라는걸 리턴하는 형태의 클로저.
//AnyObserver는 옵저버블 시퀀스에 값을 쉽게 추가할수 있도록 하는아이임.
//1만 방출되고 2는 안된이유는 onCompleted()이벤트를 통해서 옵저버블이 종료되었기 때문

print("----------create1---------")
Observable.create { observer -> Disposable in
    observer.onNext(1) // == observer.on(.next(1))
    observer.onCompleted()// == observer.on(.completed)
    observer.onNext(2)
    return Disposables.create()
}
.subscribe{print($0)}
.disposed(by: disposeBag)


//error는 error를 방출한다음에 옵저버블을 종료시킴.
//disposed도 하지않으면 어떻게될까?
//onNext가 1,2가 다찍히지만 종료를 위한 이벤트를 하지않기 때문에 메모리낭비가 발생함.
print("----------create2---------")
enum MyError: Error {
    case anError
}

Observable.create{observer -> Disposable in
    observer.onNext(1)
    observer.onError(MyError.anError)
    observer.onCompleted()
    observer.onNext(2)
    return Disposables.create()
}
.subscribe(
    onNext: {
    print($0)
    }
    , onError: {
        print($0.localizedDescription)
    }
    , onCompleted:{
        print("Completed")
    }
    , onDisposed:{
        print("disposed")
    }
)
.disposed(by: disposeBag)

//deferred : subscriber에게 조건을 입력받는 옵저버블을 만드는 대신에 각 서브스크라이버에게 새롭게 옵저버블항목을 제공하는 옵저버블 팩토리를 만드는 방식
print("----------deferred1---------")
Observable.deferred{
    Observable.of(1, 2, 3)
}
.subscribe{print($0)}
.disposed(by: disposeBag)


//back(뒤집기)에 따라서 deffered내부에있는 옵저버블 묶음중에 조건에 따라 나올 수 있음.
print("----------deferred2---------")
var back: Bool = false

let factory: Observable<String> = Observable.deferred{
    back = !back
    
    if back {
        return Observable.of("11111")
    }else{
        return Observable.of("2222")
    }
}

for _ in 0...3 {
    factory.subscribe(onNext: {
        print($0)
    })
        .disposed(by: disposeBag)
}
