//
//  DiaryDetailViewController.swift
//  Diary
//
//  Created by 안종표 on 2021/12/29.
//

import UIKit

//델리게이트를 정의해서 일기장 상세화면에서 삭제가 일어날때 메소드를 통해 일기장 리스트화면에 인덱스패스를 전달해서 다이어리 리스트배열과 컬렉션뷰의 일기가 삭제되도록.
//한가지문제점 일기장상세화면에서 삭제또는 즐겨찾기 토글이 일어나게되면 델리게이트를통해 뷰컨트롤러클래스 즉 일기장화면의 인덱스패스와 즐겨찾기여부를 전달하는데 이렇게되면 1대1로만 데이터를 전달하기때문에 일기장화면에서 일기장상세화면으로 이동이됬을때는 일기장화면에만 델리게이트를 전달할 수 있고 즐겨찾기화면에서 일기장상세화면으로 이동했을떄는 즐겨찾기화면에만 델리게이트를 전달가능 그래서 델리게이트 다걷어내고 노티피케이션센터를이용해서 일기장 상세화면에서 삭제또는 즐겨찾기 토글행위가발생하면 일기장화면과 즐겨찾기화면의 이벤트가 모두 전달되게 로직변경
//protocol DiaryDetailViewDelegate: AnyObject{
//    //삭제도 마찬가지로 노티피케이션센터로 다옵저버해서 필요없어짐.
////    func didSelectDelete(indexPath: IndexPath)
//    //노티피케이션센터로 다 옵저버하기때문에 필요가없어짐.
////    func didSelectStar(indexPath: IndexPath, isStar:Bool)
//}

class DiaryDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentsTextView: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    
    //즐겨찾기버튼
    var starButton: UIBarButtonItem?
    
    //프로토콜선언
//    weak var deleagte: DiaryDetailViewDelegate?
    //일기장리스트화면에서 전달받을 프로퍼티
    var diary: Diary?
    var indexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //이렇게되면 일기장리스트화면에서 일기장을 선택했을때 다이어리 프로퍼티에 다이어리객체를 넘겨주게되면 일기장 상세화면에 일기장 제목과 내용, 날짜가 표시되게된다.
        self.configureView()
      
    }
    
    //프로퍼티를 통해 전달받은 객체를 뷰에 초기화시켜줌
    private func configureView(){
        guard let diary = self.diary else {return}
        self.titleLabel.text = diary.title
        self.contentsTextView.text = diary.contents
        self.dateLabel.text = self.dateToString(diary.date)
        
        self.starButton = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(tapStartButton))
        self.starButton?.image = diary.isStart ? UIImage(systemName: "star.fill") : UIImage(systemName: "star")
        self.starButton?.tintColor = .orange
        self.navigationItem.rightBarButtonItem = self.starButton
    }
    //date -> String
    private func dateToString(_ date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yy년 MM월 dd일(EEEEE)"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
    
    //수정된 다이어리객체를 전달받아서 뷰에 업데이트되도록 코드를 작성 포스트에서보낸 수정된 다이어리객체를 가져오는 작업
    @objc func editDiaryNotification(_ notification: Notification){
        guard let diary = notification.object as? Diary else {return}
        guard let row = notification.userInfo?["indexPath.row"] as? Int else {return}
        self.diary = diary
        self.configureView()
    }
    
    @IBAction func tapEditButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "WriteDiaryViewController") as? WriteDiaryViewController else {return}
        //다이어리에디터모드프로퍼티를 통해서 수정할 다이어리객체를 전달을 시킴
        guard let indexPath = self.indexPath else {return}
        guard let diary = self.diary else {return}
        //이렇게하면 수정버튼을눌렀을때 라이트다이어리뷰컨트롤러에 선언된 다이어리 에디터모드 프로퍼티에 열거형값 에딧을 전달하고 연관값으로 인덱스패스와 다이어리가 전달됨.
        viewController.diaryEditorMode = .edit(indexPath, diary)
        //Notification을 옵저빙하는코드
        //옵저버를 추가하게되면 특정이름의 노티피케이션이벤트가 발생했는지 계속관찰하고 이벤트가 발생하면 특정행위를 실행함
        //observer에는 어떤인스턴스에서 옵저빙할건지 알려줘야함. 다이어리디테일뷰컨에서할꺼니까self로
        //
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(editDiaryNotification(_:)),
                                               name: NSNotification.Name("editDiary"),
                                               object: nil)
        
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapDeleteButton(_ sender: UIButton) {
        guard let indexPath = self.indexPath else {return}
        NotificationCenter.default.post(
            name: NSNotification.Name("deleteDiary"),
            object: indexPath)
//        self.deleagte?.didSelectDelete(indexPath: indexPath)
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func tapStartButton(){
        guard let isStar = self.diary?.isStart else {return}
        guard let indexPath = self.indexPath else {return}
        

        if isStar {
            self.starButton?.image = UIImage(systemName: "star")
        }else{
            self.starButton?.image = UIImage(systemName: "star.fill")
            
        }
        self.diary?.isStart = !isStar
        NotificationCenter.default.post(
            name: NSNotification.Name("starDiary"),
            object: [
                //즐겨찾기가 됬을때 즐겨찾기 화면에 추가되도록 만들기위해 diary dict추가.
                    "diary" : self.diary,
                "isStar" : self.diary?.isStart ?? false,
                "indexPath": indexPath
        ],
            userInfo: nil)
//        self.deleagte?.didSelectStar(indexPath: indexPath, isStar: self.diary?.isStart ?? false)
    }
    
    //관찰이 필요없을때는 옵저버제거
    deinit{
        NotificationCenter.default.removeObserver(self)
    }

}
