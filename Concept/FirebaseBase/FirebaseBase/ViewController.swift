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
    var customers: [Customer] = []
    @IBOutlet weak var firstData: UILabel!
    
    @IBOutlet weak var numberOfCustomers: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLabel()
        variableTypeInsert()
        
        
//        updateBasicTypes()
//        deleteBasicTypes()
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
    
    @IBAction func createCustomer(_ sender: Any) {
        savecustomers()
    }
    
    @IBAction func readCustomer(_ sender: Any) {
        fetchCustomers()
    }
    
    @IBAction func updateCustomer(_ sender: Any) {
        updateCustomer()
    }
    func updateCustomer(){
        guard self.customers.isEmpty == false else {return}
        customers[0].name = "min"
        
        let dictValue = customers.map{$0.toDictionary}
        db.updateChildValues(["customers":dictValue])
    }
    @IBAction func deleteCustomer(_ sender: Any) {
        deleteCustomer()
    }
    
    func deleteCustomer(){
        db.child("customers").removeValue()
    }
    
    
    
}
//데이터 수정 및 삭제
extension ViewController {
    func updateBasicTypes() {
        db.updateChildValues(["int":6])
        db.updateChildValues(["double":5.4])
        db.updateChildValues(["str":"변경된String"])
    }
    func deleteBasicTypes() {
        db.child("int").removeValue()
        db.child("double").removeValue()
        db.child("str").removeValue()
       
    }
}


// 데이터 fetch(불러오기)
extension ViewController {
    func fetchCustomers(){
        db.child("customers").observeSingleEvent(of: .value){
            snapshot in
            print("--->\(snapshot)")
            do{
                let data = try JSONSerialization.data(withJSONObject: snapshot.value, options: [])
                let decoder = JSONDecoder()
                let customers: [Customer] = try decoder.decode([Customer].self, from: data)
                self.customers = customers
                DispatchQueue.main.async {
                    self.numberOfCustomers.text = "\(customers.count)"
                }
                print("-----> \(customers.count)")
            }catch let error{
                print("\(error.localizedDescription)")
            }
        }
    }
}



// 데이터 삽입
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

struct Customer: Codable {
    let id: String
    var name: String
    let books: [Book]
    
    //오브젝트를 Firebase에 보내기위해서는 딕셔너리 형태로 변경해서 보내줘야한다.
    var toDictionary: [String:Any] {
        let booksArray = books.map{ $0.toDitionary }
        let dict: [String:Any] = ["id":id,"name":name,"books":booksArray]
        return dict
    }
    static var id = 0
}
struct Book:Codable {
    let title: String
    let author: String
    
    var toDitionary: [String: Any]{
        let dict: [String:Any] = ["title": title, "author":author]
        return dict
    }
    }
