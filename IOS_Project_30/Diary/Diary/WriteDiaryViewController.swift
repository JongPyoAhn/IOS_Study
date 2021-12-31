//
//  WriteDiaryViewController.swift
//  Diary
//
//  Created by 안종표 on 2021/12/29.
//

import UIKit

//수정할 다이어리 객체를 전달받을 수 있게 열거형정의
enum DiaryEditorMode {
    case new
    //연관값
    case edit(IndexPath, Diary)
    
}


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
    //다이어리 에디터 모드타입을 저장하는 프로퍼티를 선언
    var diaryEditorMode: DiaryEditorMode = .new
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureDatePicker()
        self.configureContentsTextView()
       
        self.configureInputField()
        self.configureEditMode()
        self.confirmButton.isEnabled = false
    }
    
    
    //연관값으로 전달받은 다이어리객체를 라이트다이어리뷰컨트롤러의 텍스트필드와 텍스트뷰에 표시되게 코드작성
    private func configureEditMode(){
        switch self.diaryEditorMode{
        case let .edit(_, diary):
            self.titleTextField.text = diary.title
            self.contentsTextView.text = diary.contents
            self.dateTextField.text = self.dateToString(diary.date)
            self.diaryDate = diary.date
            self.confirmButton.title = "수정"
            
        default:
            break
        }
    }
    //date -> String
    private func dateToString(_ date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yy년 MM월 dd일(EEEEE)"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
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
    //수정이 일어나면 노티피케이션센터에 수정된 다이어리객체를 전달하고 노티피케이션센터를 구독하고있는 화면에서 수정된 다이어리객체를 전달받고 뷰에도 수정된 내용이 갱신되게 구현을해봄.
    //NotificationCenter: 등록된 이벤트가 발생하면 해당 이벤트들에 대한 행동을 취하는것임 한마디로 앱내에서 아무데서나 메세지를 던지면 아무데서나 메시지를 받아줌. post라는 메소드로 이벤트를 전송하고 observer로 이벤트를 받을 수 있음.
    @IBAction func tapConfirmButton(_ sender: Any) {
        guard let title = self.titleTextField.text else {return}
        guard let contents = self.contentsTextView.text else {return}
        guard let date = self.diaryDate else {return}
//        let diary = Diary(title: title, contents: contents, date: date, isStart: false)
        //NotificationCenter의 Post메소드를 이용해서 일기 내용이 수정된 다이어리객체를 노티피케이션센터를 옵저빙하는곳에 전달.
        switch self.diaryEditorMode{
        case .new:
            //처음만들떄는 즐겨찾기 false
            let diary = Diary(
                uuidString: UUID().uuidString, //일기를 생성할 때마다 고유한 uuid값생성
                title: title,
                contents: contents,
                date: date,
                isStart: false)
            self.delegate?.didSelectRegister(diary: diary)
        //연관값은 인덱스패스만 필요할거같아서
        //post메소드의 네임파라미터에는 노티피케이션의 이름을적어주면되는데 이 이름을가지고 옵저버에서 설정한이름의 노티피케이션이벤트가 발생하였는지 관찰하게된다.object에는 전달할객체, userInfo파라미터에는 노티피케이션과 관련된값을 넘겨줄 수 있는데 수정이 일어나면 컬렉션뷰리스트에도 수정이일어나야하기때문에 indexPath.row전달
        case let .edit(indexPath, diary):
            //일기를 수정하면 현재상태의 즐겨찾기 상태를 넘겨줌(해준이유 : 기존에는 즐겨찾기상태에서 수정하면 즐겨찾기가 풀렸음.
            let diary = Diary(
                uuidString: UUID().uuidString, //일기를 생성할 때마다 고유한 uuid값생성
                title: title,
                contents: contents,
                date: date,
                isStart: diary.isStart)
            NotificationCenter.default.post(
                name: NSNotification.Name("editDiary"),
                object: diary,
                userInfo: nil)
        }
        
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
