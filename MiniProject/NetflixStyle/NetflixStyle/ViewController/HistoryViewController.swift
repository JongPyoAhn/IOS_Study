//
//  HistoryViewController.swift
//  NetflixStyle
//
//  Created by 안종표 on 2021/07/21.
//

import UIKit
import Firebase
import FirebaseDatabase
class HistoryViewController: UIViewController {

    
    @IBOutlet weak var tableVIew: UITableView!
    let db = Database.database().reference().child("SearchHistory")
    var searchTerms: [SearchTerm] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        db.observeSingleEvent(of: .value){
            snapshot in
           
            guard let searchHistory = snapshot.value as? [String:Any] else {return }
            let data = try! JSONSerialization.data(withJSONObject: Array(searchHistory.values), options: [])
            do{
            let decoder = JSONDecoder()
                let searchTerms = try decoder.decode([SearchTerm].self, from: data).sorted(by: {$0.timeStamp > $1.timeStamp})
            self.searchTerms = searchTerms
            
            DispatchQueue.main.async {
                self.tableVIew.reloadData()
                }
            }catch let error {
                print("\(error.localizedDescription)")
            }
                print("\(data)")
        }
    }
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchTerms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as? historyCell else {return UITableViewCell()}
        cell.searchTerm.text = self.searchTerms[indexPath.row].term
        return cell
    }
    
    
}
extension HistoryViewController: UITableViewDelegate {
    
}

class historyCell: UITableViewCell {
    @IBOutlet weak var searchTerm: UILabel!
}

struct SearchTerm: Codable {
    let term: String
    let timeStamp: TimeInterval
}
