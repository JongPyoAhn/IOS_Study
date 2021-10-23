import RxSwift
import Foundation
import os

let disposeBag = DisposeBag()

//임의의 에러를 각각 만들어줄거임
enum TraitsError: Error {
    case single
    case maybe
    case completable
}

print("-----Single1----")
//싱글은 하나의 이벤트만 방출하고 종료되기 때문에 저스트를 이용
//옵저버블과 비슷하지만 약간읜 제한된 방식으로 표현하는것임.
//싱글의 온 석세스는 옵저버블의 온넥스트와 온컴플리티드를 합친것
//즉, onNext하나의 이벤트를 발생시킨다음 바로 종료됨(onCompleted)
Single<String>.just("✔")
    .subscribe(
        onSuccess: {
        print($0)
    },
        onFailure: {
        print("error : \($0)")
    },
        onDisposed: {
        print("disposed")
    }).disposed(by: disposeBag)


print("-----Single2----")
//옵저버블을 싱글로 변환해주는법
//메뉴얼리하게 만들어야되기 때문에 just -> create
Observable<String>.create({ observer -> Disposable in
    observer.onError(TraitsError.single)
    return Disposables.create()
})
    .asSingle()
    .subscribe(onSuccess: {
        print($0)
    }, onFailure: {
        print("error : \($0.localizedDescription)")
    }, onDisposed: {
        print("disposed")
    }
    )
    .disposed(by: disposeBag)

print("-----Single3----")
//네트워크를 통해 받아온 json을 디코딩할거임.

struct SomeJSON: Decodable {
    let name : String
}
enum JSONError: Error {
    case decodingError
}

let json1 = """
    {"name":"park"}
    """
let json2 = """
    {"my_name":"young"}
    """


//이런식으로 싱글이라는 시퀀스를 내보내는 함수를 하나 만든거임.
func decode(json: String) -> Single<SomeJSON> {
    Single<SomeJSON>.create { observer -> Disposable in
        guard let data = json.data(using: .utf8),
              let json = try? JSONDecoder().decode(SomeJSON.self, from: data) else {observer(.failure(JSONError.decodingError)) //실패했을 때 옵저버의 failure라는 이벤트를 담아서 전달
            return Disposables.create()
        }
        observer(.success(json)) //문제없이 디코딩되었다면 석세스라는 이벤트에 담아서 내보내준거임.
        return Disposables.create()
    }
}

decode(json: json1)
    .subscribe{
        switch $0 {
        case .success(let json):
            print(json.name)
        case .failure(let error):
            print(error)
        }
    }
    .disposed(by: disposeBag)

decode(json: json2)
    .subscribe{
        switch $0 {
        case .success(let json):
            print(json.name)
        case .failure(let error):
            print(error)
        }
    }
    .disposed(by: disposeBag)

//이런식으로 네트워크 실패또는 성공밖에없는 경우는 불필요하게 계속해서 발생할 여지를 주는 온넥스트가 없고 단순하게 하나의 이벤트를 발생시키고 종료하는 싱글을 이용

print("--------Maybe1--------")
Maybe<String>.just("✔️")
    .subscribe(
        onSuccess: {
        print($0)
    }, onError: {
        print($0)
    }, onCompleted: {
        print("completed")
    }, onDisposed: {
        print("disposed")
    })
    .disposed(by: disposeBag)

print("--------Maybe2--------")
Observable<String>.create{
    observer -> Disposable in
    observer.onError(TraitsError.maybe)
    return Disposables.create()
}
.asMaybe()
.subscribe(
    onSuccess: {
    print("성공 : \($0)")
}, onError: {
    print("에러 : \($0)")
}, onCompleted: {
    print("completed")
}, onDisposed: {
    print("disposed")
})
.disposed(by: disposeBag)

print("---------completable1-----------")
Completable.create{
    observer -> Disposable in
    observer(.error(TraitsError.completable))
    return Disposables.create()
}
.subscribe(onCompleted: {
    print("completed")
}, onError: {
    print("error : \($0)")
}, onDisposed: {
    print("disposed")
})
.disposed(by: disposeBag)

print("---------completable2-----------")
Completable.create{ observer -> Disposable in
    observer(.completed)
    return Disposables.create()
}
.subscribe{
    print($0)
}
.disposed(by: disposeBag)
