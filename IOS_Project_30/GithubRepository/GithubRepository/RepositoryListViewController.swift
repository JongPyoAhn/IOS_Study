//
//  RepositoryListViewController.swift
//  GithubRepository
//
//  Created by 안종표 on 2021/10/25.
//

import UIKit
import RxSwift
import RxCocoa

class RepositoryListViewController: UITableViewController {
    // 8.
    private let organization = "Apple"
    //18.네트워크통신을 하고나면 레포지토리목록들이 다 디코딩 잘된채로 넘어올거잖아요
    //원래는 private let repositories = [Repository]이런 형식으로 했엇지만 이번에는 RXSwift를 사용.
    private let repositories = BehaviorSubject<[Repository]>(value: [])
    private let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //8. NavigationTitle에 보여질 문구를 작성한거임.
        title = organization + "Repositories"
        
        //어떤액션을 트리거로 깃헙API를 얻어올거냐면 refreshControl
        //refreshControl이란? 아래로당겨서 새로고침(유튜브생각해보기)
        //9.
        self.refreshControl = UIRefreshControl()
        let refreshControl = self.refreshControl!
        refreshControl.backgroundColor = .white
        refreshControl.tintColor = .darkGray
        refreshControl.attributedTitle = NSAttributedString(string: "당겨서 새로고침")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        //10.
        tableView.register(RepositoryListCell.self, forCellReuseIdentifier: "RepositoryListCell")
        tableView.rowHeight = 140
        
    }
    


    @objc func refresh() {
        //20.
        DispatchQueue.global(qos: .background).async {[weak self] in
            guard let self = self else {return}
            self.fetchRepositories(of: self.organization)
        }
    }
    
    //19.
    func fetchRepositories(of organization: String){
        //애플이라는 아이를 어레이형태로 받을 프롬을 사용
        Observable.from([organization])
            .map{ organization -> URL in //apple이라는 string이 들어오면 url로 바꿔줄거임.
                //올가니제이션이라는 스트링을 받았지만 리턴값은 유알엘인것.
                return URL(string: "https://api.github.com/orgs/\(organization)/repos")!
            }
            .map{ url -> URLRequest in
                var request = URLRequest(url: url)
                request.httpMethod = "GET" //리퀘스트의 httpMethod는 GET이었죠.
                return request
            }
        //URLRequest를 받아서 어떠한옵저버블타입으로 바꿔줄거임
        //HTTPURLResponse와 data를 전달해주는 튜플의형태를 갖는 옵저버블로 전달해주겠다.
            .flatMap { request -> Observable<(response: HTTPURLResponse, data: Data)> in
                //rx라는걸쓰면 URLSession등 기본적으로 스위프트에서 제공하는 여러가지 인자들을 rx로 변환해줄 수 있음.
                //우리는 response를 변환받을거임. 이렇게하면 리스폰스는 URLRequest를 받아서 방금선언한 리스폰스와 데이터의 튜플을 가지는 옵저버블 시퀀스로 반환해준다.
                return URLSession.shared.rx.response(request: request)
            }
        //제대로된 응답과 그렇지않은 응답을 구분할거임.
            .filter{ responds, _ in
                return 200..<300 ~= responds.statusCode
            }
        //리스폰스는 이제 필터링으로 충분히 써먹엇으니, 맵안에서 데이터를 갖고놀거임. [[String:Any]]형태로.
            .map{ _, data -> [[String: Any]] in
                guard let json = try? JSONSerialization.jsonObject(with: data, options:[]),
                      
                        let result = json as? [[String: Any]] else {//꺼내오면 이렇게 보일거야라고 알려줌
                          return []
                      }
                return result
            }
        //제대로 데이터를 풀지못하면 빈어레이가 나오니까 그건 안받고 무시하기위함.
            .filter{ result in
                result.count > 0
            }
        //이안에서 repository모델로 바꿔줄거
            .map { objects in
                return objects.compactMap { dic -> Repository? in//딕셔너리를 푸는과정에서 제대로 디코딩안되면 닐값을 배출하는데 콤팩트맵을 쓰면 자동으로 닐값을 제거해줌.
                    //id라는 애가 있을거야 얘는 너가보는 딕셔너리에서 id라는 키값이 있을거고 인트형태일거야.라고 알려줌.
                    //만약에 이렇게 못하겟으면 그냥 닐 내뱉어. 제대로했다면 레포지토리를 내뱉어줘.
                    guard let id = dic["id"] as? Int,
                          let name = dic["name"] as? String,
                          let description = dic["description"] as? String,
                          let stargazersCount = dic["stargazers_count"] as? Int,
                          let language = dic["language"] as? String else {
                              return nil
                          }
                    return Repository(id: id, name: name, description: description, stargazersCount: stargazersCount, language: language)
                }
            }//필터로 걸러냈기때문에 subscribe에 다른요소는 필요없음.
            .subscribe(onNext: {[weak self] newRepositories in
                //behavorisubject에 온넥스트로 우리가받은 레포지토리를 전달해주면 이제 초기값을 떠나서 우리가 새롭게 api통신을 통해서 받게된 레포지토리리스트를 받게되겠죠.
                self?.repositories.onNext(newRepositories)
                
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                    self?.refreshControl?.endRefreshing()//새로운아이템들을받아왔으면리프레쉬그만하도록명령
                }
            })
            .disposed(by: disposeBag)
        
    }
}
// 11. UITAbleviewDatasource delegate

//21. behaviorSubject는 벨류값을 뽑아낼수 있다.
extension RepositoryListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        do{
            return try repositories.value().count
        }catch { //만약에 에러가 발생해서 밸류값을 뽑아낼수 없엇다면 0이됨.
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryListCell", for: indexPath) as? RepositoryListCell else {return UITableViewCell()}
        //21.
        var currentRepo: Repository? {
            do{
                return try repositories.value()[indexPath.row]
            }catch{
                return nil
            }
        }
        cell.repository = currentRepo
        
        return cell
    }
}
