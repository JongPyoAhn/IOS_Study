//
//  ViewController.swift
//  FirebaseBase
//
//  Created by 안종표 on 2021/07/19.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    let db = Database.database().reference()
    
    @IBOutlet weak var firstData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabel()
        variableTypeInsert()
        savecustomers()
    }

    func updateLabel(){
        db.child("firstData").observeSingleEvent(of: .value) {snapshot in
            print("---> \(snapshot)")
            let value = snapshot.value as? String ?? ""
            DispatchQueue.main.async {
                self.firstData.text = value
            }
        }
    }
}

extension ViewController {
    func variableTypeInsert(){
        db.child("int").setValue(3)
        db.child("double").setValue(3.5)
        db.child("str").setValue("하이")
        db.child("array").setValue(["a", "b", "c"])
        db.child("dict").setValue(["id": "0", "age":"24"])
    }
    func savecustomers(){
        let books = [Book(title: "Good", author: "Someone"), Book(title: "Body", author: "Nine")]
        let customer1 = Customer(id: "\(Customer.id)", name: "Son", books: books)
        Customer.id += 1
        let customer2 = Customer(id: "\(Customer.id)", name: "Dele", books: books)
        Customer.id += 1
        let customer3 = Customer(id: "\(Customer.id)", name: "Kane", books: books)
        db.child("customers").child(customer1.id).setValue(customer1.toDictionary)
        db.child("customers").child(customer2.id).setValue(customer2.toDictionary)
        db.child("customers").child(customer3.id).setValue(customer3.toDictionary)
    }
}

struct Customer {
    let id: String
    let name: String
    let books: [Book]
    
    //오브젝트를 Firebase에 보내기위해서는 딕셔너리 형태로 변경해서 보내줘야한다.
    var toDictionary: [String:Any] {
        let booksArray = books.map{ $0.toDitionary }
        let dict: [String:Any] = ["id":id,"name":name,"books":booksArray]
        return dict
    }
    static var id = 0
}
struct Book {
    let title: String
    let author: String
    
    var toDitionary: [String: Any]{
        let dict: [String:Any] = ["title": title, "author":author]
        return dict
    }
    }
