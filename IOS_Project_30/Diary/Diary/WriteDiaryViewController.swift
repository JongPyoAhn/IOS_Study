//
//  WriteDiaryViewController.swift
//  Diary
//
//  Created by 안종표 on 2021/12/29.
//

import UIKit
//Delegate정의 delegate를 통해서 일기장리스트화면에 일기가 작성된 다이어리 객체를 전달하려고한다.
protocol WriteDiaryViewDelegate: AnyObject{
    func didSelectRegister(diary: Diary)
}

class WriteDiaryViewController: UIViewController {

    @IBOutlet weak var confirmButton: UIBarButtonItem!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentsTextView: UITextView!
    @IBOutlet weak var dateTextField: UITextField!
    
    private let datePicker = UIDatePicker()
    //datePicker에서 선택된 Date저장
    private var diaryDate: Date?
    weak var delegate: WriteDiaryViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureDatePicker()
        self.configureContentsTextView()
        self.confirmButton.isEnabled = false
        self.configureInputField()
    }
    
    //텍스트뷰에 경계선만들기
    private func configureContentsTextView(){
        let borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        //layer관련된 색상을 설정할 때는 UIColor가 아닌 cgColor로 설정을 해야한다.
        self.contentsTextView.layer.borderColor = borderColor.cgColor
        self.contentsTextView.layer.borderWidth = 0.5
        self.contentsTextView.layer.cornerRadius = 5.0
    }
    //datePicker설정
    private func configureDatePicker(){
        self.datePicker.datePickerMode = .date
        self.datePicker.preferredDatePickerStyle = .wheels
        
        //addTarget은 UIController객체가 이벤트에 응답하는것
        //for는 무슨일이 일어났을때 action할것인지
        self.datePicker.addTarget(self, action: #selector(datePickerValueDidChange), for: .valueChanged)
        //datePicker에 표시되는 날짜를 한국어로.
        self.datePicker.locale = Locale(identifier: "ko_KR")
        
        //텍스트필드를 클릭했을 때 키보드말고 만들어놓은 데이트픽커가 표시되도록.
        self.dateTextField.inputView = self.datePicker
    }
    
    private func configureInputField(){
        self.contentsTextView.delegate = self
        //제목날짜텍스트필드 역시 텍스트가 입력될때마다 등록버튼활성화여부판단
        self.titleTextField.addTarget(self, action: #selector(titleTextFieldDidChange(_:)), for: .editingChanged)
        //날짜가 변경될때마다 등록버튼 활성화여부
        self.dateTextField.addTarget(self, action: #selector(dateTextFieldDidChange(_:)), for: .editingChanged)
    }
    
    //제목 텍스트필드에 텍스트가 입력될때마다 호출되는 메소드
    @objc private func titleTextFieldDidChange(_ textField: UITextField){
        self.validateInputField()
    }

    @objc private func dateTextFieldDidChange(_ textField: UITextField){
        self.validateInputField()
        
    }
    //일기를 다작성하고 등록버튼눌렀을때 다이어리객체를 생성하고 델리게이트에 정의한 didSelectRegister메소드를 호출해서 메소드파라미터에 생성된 다이어리객체를 전달을 시켜줄거임.
    @IBAction func tapConfirmButton(_ sender: Any) {
        guard let title = self.titleTextField.text else {return}
        guard let contents = self.contentsTextView.text else {return}
        guard let date = self.diaryDate else {return}
        let diary = Diary(title: title, contents: contents, date: date, isStart: false)
        self.delegate?.didSelectRegister(diary: diary)
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc private func datePickerValueDidChange(_ datePicker: UIDatePicker){
        //DateForematter객체는 날짜와 텍스트를 반환해주는 역할을 하는데 쉽게말해 데이트타입을 사람이 읽을수있는 문자열로 변환해주거나 날짜형태문자열에서 데이트타입으로 변환시켜주는 역할을함
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy 년 MM월 dd일(EEEEE)"
        //한국어로 표현되게
        formatter.locale = Locale(identifier: "ko_KR")
        self.diaryDate = datePicker.date
        self.dateTextField.text = formatter.string(from: datePicker.date)
        //날짜가 변경될때마다 edittingChanged액션을 발생시킴.
        //dateTextField에 edittingChanged액션을 전달하는느낌
        self.dateTextField.sendActions(for: .editingChanged)
        
    }
    //화면터치시 호출
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //빈화면 누를때마다 편집기를 끝내는거
        self.view.endEditing(true)
    }
    //모든 inputField가 비어있지 않으면 등록버튼이 활성화되게
    private func validateInputField(){
        self.confirmButton.isEnabled = !(self.titleTextField.text?.isEmpty ?? true) && !(self.dateTextField.text?.isEmpty ?? true) && !self.contentsTextView.text.isEmpty
    }

}
extension WriteDiaryViewController: UITextViewDelegate{
    //내용입력할 때 마다 호출되는 메소드(내용 입력될때마다 등록버튼 활성화여부 판단하는거임)
    func textViewDidChange(_ textView: UITextView) {
        self.validateInputField()
    }
}
