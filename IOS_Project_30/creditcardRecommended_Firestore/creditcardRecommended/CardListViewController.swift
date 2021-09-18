//
//  CardListViewController.swift
//  creditcardRecommended
//
//  Created by 안종표 on 2021/09/17.
//

import UIKit
import Kingfisher
import FirebaseDatabase
import FirebaseFirestore
class CardListViewController: UITableViewController {
    //42.
    var db = Firestore.firestore()
    //2.
    var creditCardList: [CreditCard] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //1. UITableView Cell Register
        let nibName = UINib(nibName: "CardListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "CardListCell")
    
        //43. Firesotre 읽기
        db.collection("creditCardList").addSnapshotListener { snapshot, error in
            guard let document = snapshot?.documents else {
                print("Error Firestore fetching document \(error?.localizedDescription)")
                return
            }
            //document의 compactmap으로 nil값을 없앨것임.
            self.creditCardList = document.compactMap{ doc -> CreditCard? in
                do{
                    let jsonData = try JSONSerialization.data(withJSONObject: doc.data(), options: [])
                    let creditCard = try JSONDecoder().decode(CreditCard.self, from:  jsonData)
                    return creditCard
                }catch let error {
                    print("JsonPashing error: \(error.localizedDescription)")
                    return nil
                }
            }.sorted(by: { a, b in
                a.rank < b.rank
            })
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
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
        
        //44. FireStore쓰기
        //1) 각 콜렉션과 문서의 id를 알 때
        let cardID = creditCardList[indexPath.row].id
//        db.collection("creditCardList").document("card\(cardID)").updateData(["isSelected": true])
        
        //2) 각 콜렉션과 문서의 id를 모를 때
        db.collection("creditCardList").whereField("id", isEqualTo: cardID).getDocuments { snapshot, error in
            guard let document = snapshot?.documents.first else {
                print("ERROR FireStore fetching Documnet")
                return
            }
            
            document.reference.updateData(["isSelected": true])
        }
        
    }
    //36.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
             //45. FireStore 삭제
            //1) 경로를 알 때
            let cardID = creditCardList[indexPath.row].id
            db.collection("creditCardList").document("card\(cardID)").delete()
            
            //2) 경로를 모를 때
            db.collection("creditCardList").whereField("id", isEqualTo: cardID).getDocuments { snapshot, _ in
                guard let document = snapshot?.documents.first else {
                    print("ERROR")
                    return
                }
                document.reference.delete()
            }
        }
    }
    
}
