//
//  AddAlertViewController.swift
//  DrinkAlarm
//
//  Created by 안종표 on 2021/09/24.
//

import UIKit

class AddAlertViewController: UIViewController {

    //18.
    var pickedDate: ((_ date: Date) -> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //18.
    //사람들이 선택할 datePicker에 있는 시간을 부모뷰에 전달을 해줘야지 리스트에 표현이 될거임 따라서 확인버튼을 누르면 설정한 시간값이 부모뷰에 전달할 수 있도록 pickDate선언
    @IBAction func saveButtonTapped(_ sender: Any) {
        pickedDate?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
 
}
