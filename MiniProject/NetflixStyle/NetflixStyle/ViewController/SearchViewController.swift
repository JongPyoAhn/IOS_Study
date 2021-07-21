//
//  SearchViewController.swift
//  NetflixStyle
//
//  Created by 안종표 on 2021/07/14.
//


import UIKit
import Kingfisher
import AVFoundation
import Firebase
import FirebaseDatabase

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var resultCollectionView: UICollectionView!
    
    let db = Database.database().reference().child("SearchHistory")
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //몇개
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //커스텀
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ResultCell", for: indexPath) as? ResultCell else {return UICollectionViewCell()}
        cell.backgroundColor = .red
        
        let movie = movies[indexPath.item]
        //imagePath(String) -> image
        //외부코드 가져다 쓰기
        // 방법 1. SPM(SwiftPackageManager)
        // 방법 2. CocoaPod
        // 방법 3. Carthage
        let url = URL(string: movie.thumnailPath)
        cell.movieThumnail.kf.setImage(with: url)
        return cell
    }
    
    
}
extension SearchViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // movie
        // player vc
        // player vc에 movie전달
        // presenting player vc
        let movie = movies[indexPath.item]
        let url = URL(string:movie.previewURL)!
        let item = AVPlayerItem(url: url)
        let sb = UIStoryboard(name: "Player", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "PlayerViewController") as! PlayerViewController
       
        vc.modalPresentationStyle = .fullScreen
        vc.player.replaceCurrentItem(with: item)
        present(vc, animated: false, completion: nil)
        
    }
}
extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        let margin: CGFloat = 8
        let itemSpacing: CGFloat = 10
            
        let width = (collectionView.bounds.width - margin * 2 - itemSpacing * 2) / 3
        let height = width * 10 / 7
        return CGSize(width: width, height: height)
    }
}
extension SearchViewController: UISearchBarDelegate{
    private func dismissKeyboard(){
        searchBar.resignFirstResponder()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //검색 시작
        
        
        //키보드가 올라와 있을 때 내려가게 처리
        dismissKeyboard()
        //검색어가 있는지
        guard let searchTerm = searchBar.text, searchTerm.isEmpty == false else {return}
        
        //네트워킹을 통한 검색
        //- 서치텀을가지고 네트워킹을 통해서 영화검색
        //- 검색API필요
        //- 결과를 받아올 모델 Movie, Response
        //- 결과를 받아와서, CollectionView로 표현
        searchAPI.search(searchTerm){ movies in
            //collecionView로 표현하기
            print(" ---> 몇개 넘어왔어??? \(movies.count)")
            DispatchQueue.main.async {
                self.movies = movies
                self.resultCollectionView.reloadData()
                let timeStamp: Double = Date().timeIntervalSince1970.rounded()
                self.db.childByAutoId().setValue(["term":searchTerm, "timeStamp":timeStamp])
            }
        }
        print("---> 검색어 : \(searchTerm)")
    }
}
class ResultCell: UICollectionViewCell {
    @IBOutlet weak var movieThumnail: UIImageView!
    
}


class searchAPI{
    static func search(_ term: String, completion: @escaping ([Movie]) -> Void){
        let session = URLSession(configuration: URLSessionConfiguration.default)
        var urlComponent = URLComponents(string: "https://itunes.apple.com/search?")
        let mediaQuery = URLQueryItem(name: "media", value: "movie")
        let entityQuery = URLQueryItem(name: "entity", value: "movie")
        let termQuery = URLQueryItem(name: "term", value: term)
        urlComponent?.queryItems?.append(mediaQuery)
        urlComponent?.queryItems?.append(entityQuery)
        urlComponent?.queryItems?.append(termQuery)
        
        let requestURL = (urlComponent?.url)!
        let dataTask = session.dataTask(with:requestURL){ data, response, error in
            let successRange = 200..<300
            guard error == nil,
                  let statusCode = (response as? HTTPURLResponse)?.statusCode,
                  successRange.contains(statusCode) else { completion([])
                    return }
            guard let resultData = data else {
                completion([])
                return
            }
//            let string = String(data: resultData, encoding: .utf8)!
            let movies = searchAPI.parseMovies(resultData)
            completion(movies)
            print("---> result : \(movies.count) --> 첫번째꺼 제목 : \(movies.first?.title)")
        }
        dataTask.resume()
    }
        
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
}
    
struct Response: Codable {
    let resultCount: Int
    let movies: [Movie]
    
    enum CodingKeys: String, CodingKey{
        case resultCount
        case movies = "results"
    }
}

struct Movie: Codable {
    let title: String
    let director: String
    let thumnailPath: String
    let previewURL: String
    
    
    enum CodingKeys: String, CodingKey{
        case title = "trackName"
        case director = "artistName"
        case thumnailPath = "artworkUrl100"
        case previewURL = "previewUrl"
        }
    }


