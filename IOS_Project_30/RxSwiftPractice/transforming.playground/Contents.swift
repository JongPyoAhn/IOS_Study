import RxSwift
import Foundation
import os

let disposeBag = DisposeBag()

print("---------toArray---------")
//옵저버블의 독립적요소들을 어레이로 만들수있는 가장 편리한 방법
Observable.of("A", "B", "C")
    .toArray()
    .subscribe(onSuccess: {
        print($0)
    })
    .disposed(by: disposeBag)

print("---------map---------")
Observable.of(Date())
    .map{ date -> String in
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = Locale(identifier: "ko_KR")
        return dateFormatter.string(from: date)
    }
    .subscribe(onNext:{
        print($0)
    })
    .disposed(by: disposeBag)

print("---------flatMap---------")
//중첩된 옵저버블에서 특정한 선수가 가진점수를 얻거나 핸들링하고싶을때 사용
//결과를보면 첫번째 올림픽 경기가 구독하고 국가대표를 배출하는데 그때 초기값을 나타냄
//그다음 구독이후 발생한이벤트 발생 그다음에 미국국가대표가 나오는데 따라서 이때
//미국국가대표가 가진 초기값이 나옴.
protocol 선수 {
    var 점수 : BehaviorSubject<Int> {get}
}
struct 양궁선수 : 선수 {
    var 점수: BehaviorSubject<Int>
}

let korean = 양궁선수(점수: BehaviorSubject<Int>(value: 10))
let american = 양궁선수(점수: BehaviorSubject<Int>(value: 8))

let olympic = PublishSubject<선수>()

olympic
    .flatMap{선수 in
        선수.점수
    }
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposeBag)

olympic.onNext(korean)
korean.점수.onNext(10)

olympic.onNext(american)
korean.점수.onNext(10)
american.점수.onNext(9)

print("---------flatMapLatest---------")
//가장최신의 값만을 확인하고싶을 때 사용함. map과 switchLatest를 합친거임.
//전국체전.onNext(서울)일떄는 서울이 가장 최근의 시퀀스이기 때문에
//계속해서 서울의 최신값들을 보여줌.
//하지만 제주도라는 새로운시퀀스가 생기기 때문에 서울은 그냥 해제됨.
//네트워킹조작에서 가장흔하게 사용된다.
struct 높이뛰기선수: 선수 {
    var 점수: BehaviorSubject<Int>
}

let seoul = 높이뛰기선수(점수: BehaviorSubject<Int>(value: 7))
let jeju = 높이뛰기선수(점수: BehaviorSubject<Int>(value: 6))

let koreanPT = PublishSubject<선수>()
koreanPT
    .flatMapLatest{
        선수 in
        선수.점수
    }
    .subscribe(onNext:{
        print($0)
    })
    .disposed(by: disposeBag)

koreanPT.onNext(seoul)
seoul.점수.onNext(9)

koreanPT.onNext(jeju)
seoul.점수.onNext(10)
jeju.점수.onNext(8)

print("---------materialize and dematerialize---------")
//매터럴라이즈만 넣었을때는 이벤트로 감싸서 표현을해줌.
//디메터럴라이즈를 넣었을때는 이벤트를 지워줌.
enum redcard: Error {
    case notStart
}

struct runner: 선수 {
    var 점수: BehaviorSubject<Int>
}
let rabit = runner(점수: BehaviorSubject<Int>(value: 0))
let cheeta = runner(점수: BehaviorSubject<Int>(value: 1))

let 달리기100M = BehaviorSubject<선수>(value: rabit)
달리기100M
    .flatMapLatest{
        선수 in
        선수.점수
            .materialize()
    }
    .filter{
        //에러를 가졌을때는 필터를 통과시키고 에러를 표시해줘
        //그렇지않을때는 통과시키지마.
        guard let error = $0.error else {
            return true
        }
        print(error)
        return false
    }
    .dematerialize()
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposeBag)

rabit.점수.onNext(1)
rabit.점수.onError(redcard.notStart)
rabit.점수.onNext(2)

달리기100M.onNext(cheeta)

print("----------전화번호11자리------------")
let input = PublishSubject<Int?>()

let list: [Int] = []

input
    .flatMap{
        $0 == nil
        ? Observable.empty()
        : Observable.just($0)
    }
    .map{$0!}
    .skip(while: {$0 != 0})
    .take(11) //010-1234-5678
    .toArray()
    .asObservable()//옵저버블로변환
    .map{
        $0.map { "\($0)"}
    }
    .map{
        numbers in
        var numberList = numbers
        numberList.insert("-", at: 3) //010-
        numberList.insert("-", at: 8) //010-1234-
        let number = numberList.reduce(" ", +)
        return number
    }
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposeBag)
input.onNext(10)
input.onNext(0)
input.onNext(nil)
input.onNext(1)
input.onNext(0)
input.onNext(4)
input.onNext(3)
input.onNext(nil)
input.onNext(1)
input.onNext(8)
input.onNext(9)
input.onNext(4)
input.onNext(9)
input.onNext(1)
