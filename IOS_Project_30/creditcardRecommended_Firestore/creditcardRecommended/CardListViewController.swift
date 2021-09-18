//
//  CardListViewController.swift
//  creditcardRecommended
//
//  Created by 안종표 on 2021/09/17.
//

import UIKit
import Kingfisher
import FirebaseDatabase
class CardListViewController: UITableViewController {
    //33.
    var ref: DatabaseReference! //Firebase Database
    
    //2.
    var creditCardList: [CreditCard] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //1. UITableView Cell Register
        let nibName = UINib(nibName: "CardListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "CardListCell")
        //33.
        ref = Database.database().reference()
        //34.
        ref.observe(.value) { snapshot in
            guard let value = snapshot.value as? [String: [String: Any]] else {return}
            do{
                let jsonData = try JSONSerialization.data(withJSONObject: value)
                
                let cardData = try JSONDecoder().decode( [String: CreditCard].self, from: jsonData)
                let cardList = Array(cardData.values)
                self.creditCardList = cardList.sorted(by: { a, b in
                    a.rank < b.rank
                })
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch {
                print("error: ", error)
            }
        }
       
    }
    
    //3.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return creditCardList.count
    }
    
    //4.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CardListCell", for: indexPath) as? CardListCell else {return UITableViewCell()}
        cell.rankLabel.text = "\(creditCardList[indexPath.row].rank)위"
        cell.promotionLabel.text = "\(creditCardList[indexPath.row].promotionDetail.amount)만원 드려요"
        cell.cardnameLabel.text = "\(creditCardList[indexPath.row].name)"
        
        //10.
        let imageURL = URL(string: creditCardList[indexPath.row].cardImageURL)
        cell.cardImageView.kf.setImage(with: imageURL)
        return cell
        
        
    }
    
    //11.
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //28.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //상세화면 전달
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let detailViewController = storyboard.instantiateViewController(identifier: "CardDetailViewController") as? CardDetailViewController else {return}
        //detailViewController의 promotionDetail에 넣는거임
        detailViewController.promotionDetail = creditCardList[indexPath.row].promotionDetail
        self.show(detailViewController, sender: nil)
        
        //35 -1.
        let cardID = creditCardList[indexPath.row].id
        ref.child("Item\(cardID)/isSelected").setValue(true)
        //35 -2.
        //id를 검색, 이 id값은 cardID와 같은거, 그리고 value검색
//        ref.queryOrdered(byChild: "id").queryEqual(toValue: cardID).observe(.value) { [weak self] snaphot in
//            guard let self = self,
//                  let value = snaphot.value as? [String: [String: Any]],
//                  let key = value.keys.first else {return}
//            ref.child("\(key)/isSelected").setValue(true)
//        }
        
    }
    //36.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
             //Option1
            let cardID = creditCardList[indexPath.row].id
            ref.child("Item\(cardID)").removeValue()
            
            //option2
//            ref.queryOrdered(byChild: "id").queryEqual(toValue: cardID).observe(.value) { [weak self]snapshot in
//                guard let self = self,
//                      let value = snapshot.value as? [String: [String: Any]],
//                      let key = value.keys.first else {return}
//                self.ref.child(key).removeValue()
//            }
        }
    }
    
}
