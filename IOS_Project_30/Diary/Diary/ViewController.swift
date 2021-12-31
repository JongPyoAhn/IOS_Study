//
//  ViewController.swift
//  Diary
//
//  Created by 안종표 on 2021/12/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var diaryList = [Diary](){
        //이렇게하면 다이어리리스트 배열이 추가되거나 변경이일어날때마다 userDefaults에 저장되게된다.
        didSet {
            self.saveDiaryList()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureCollectionView()
        self.loadDiaryList()
        collectionView.reloadData()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(editDiaryNotification(_:)),
            name: NSNotification.Name("editDiary"),
            object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(starDiaryNotification(_:)),
            name: NSNotification.Name("starDiary"),
            object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(deleteDiaryNotification(_:)),
            name: NSNotification.Name("deleteDiary"),
            object: nil)
    }
    //콜렉션뷰의 속성을정의
    private func configureCollectionView(){
        self.collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        self.collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self

    }
    
    @objc func editDiaryNotification(_ notification: Notification){
        guard let diary = notification.object as? Diary else {return}
        //배열의 요소에 전달받은 uuid값이 있는지 확인하고 있으면 해당하는 인덱스로 배열에 수정된 일기내용이 업데이트되게.
        guard let index = self.diaryList.firstIndex(where: {$0.uuidString == diary.uuidString}) else {return}
        self.diaryList[index] = diary
        
        self.diaryList = self.diaryList.sorted{
            $0.date.compare($1.date) == .orderedDescending
        }
        self.collectionView.reloadData()
    }
    
    @objc func starDiaryNotification(_ notification: Notification){
        guard let starDiary = notification.object as? [String: Any] else{return}
        guard let isStar = starDiary["isStar"] as? Bool else {return}
        guard let uuidString = starDiary["uuidString"] as? String else {return}
        guard let index = self.diaryList.firstIndex(where: {$0.uuidString == uuidString}) else {return}
        //스타다이어리노티피케이션메소드가호출되면 즉, 즐겨찾기 토글이일어나면 didSelectStar메소드와 똑같이 실행되야함.
        self.diaryList[index].isStart = isStar
    }
    
    @objc func deleteDiaryNotification(_ notification: Notification){
        guard let uuidString = notification.object as? String else {return}
        guard let index = self.diaryList.firstIndex(where: {$0.uuidString == uuidString}) else {return}
        //didSelectDelete메소드와 똑같이 작동하게 구현
            self.diaryList.remove(at: index)
            //컬렉션뷰의 일기가 삭제되게
            self.collectionView.deleteItems(at: [IndexPath(row: index, section: 0)])
    }
    
    //delegate를 통해 작성된 다이어리가 전달될 준비가 되었으면 뷰컨트롤러로 이동해서 받을준비를 하겠음.
    //세그웨이를 통해서 이동하기 때문에 prepare메소드를 오버라이드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //이렇게 작성해서 세그웨이로 이동되는 뷰컨트롤러가 뭔지 알 수있게 코드를작성
        if let writeDiaryViewController = segue.destination as? WriteDiaryViewController{
            //delegate를 위임받음
            writeDiaryViewController.delegate = self
        }
    }
    //일기들을 UserDefaults에 Dictionary배열형태로 저장
    private func saveDiaryList(){
        let date = self.diaryList.map{
            [
                "uuidString": $0.uuidString,
                "title": $0.title,
                "contents": $0.contents,
                "date": $0.date,
                "isStart": $0.isStart
            ]
        }
        let userDefaults = UserDefaults.standard
        userDefaults.set(date, forKey: "diaryList")
    }
    //userDefaults로부터 불러오기
    private func loadDiaryList(){
        let userDefaults = UserDefaults.standard
        guard let data = userDefaults.object(forKey: "diaryList") as? [[String : Any]] else{return}
        self.diaryList = data.compactMap{
            guard let uuidString = $0["uuidString"] as? String else {return nil}
            guard let title = $0["title"] as? String else {return nil}
            guard let contents = $0["contents"] as? String else {return nil}
            guard let date = $0["date"] as? Date else {return nil}
            guard let isStart = $0["isStart"] as? Bool else {return nil}
            return Diary(uuidString: uuidString,title: title, contents: contents, date: date, isStart: isStart)
        }
        self.diaryList = self.diaryList.sorted{
            $0.date.compare($1.date) == .orderedDescending
        }
    }
    
    //date -> String
    private func dateToString(_ date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yy년 MM월 dd일(EEEEE)"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
}


extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.diaryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiaryCell", for: indexPath) as? DiaryCell else {return UICollectionViewCell()}
        let diary = self.diaryList[indexPath.row]
        cell.titleLabel.text = diary.title
        print(diary.title)
        cell.dateLabel.text = self.dateToString(diary.date)
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    //셀의 사이즈를 설정하는 역할
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //우리는 셀이 행에 2개씩 표시되게 만들거라 아이폰화면의 너비값을 2로나눈값이 너비값 - inset에 설정한 leftright간격
        return CGSize(width: (UIScreen.main.bounds.width / 2) - 20, height: 200)
    }
}
extension ViewController: UICollectionViewDelegate{
    //일기가 선택됬을 때 일기 상세화면으로 넘기기위함.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "DiaryDetailViewController") as? DiaryDetailViewController else{return}
        let diary = self.diaryList[indexPath.row]
        viewController.diary = diary
        viewController.indexPath = indexPath
//        viewController.deleagte = self
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
}



extension ViewController: WriteDiaryViewDelegate{
    //WriteDiaryViewController에 일기가 작성이되면 didSelectRegister 파라미터를 통해 작성된 일기의 내용이 담겨져있는 다이어리객체가 전달이 될텐데 그걸 diaryList에 추가
    func didSelectRegister(diary: Diary) {
        self.diaryList.append(diary)
        self.diaryList = self.diaryList.sorted{
            $0.date.compare($1.date) == .orderedDescending
        }
        print(diary)
        self.collectionView.reloadData()
    }
}

//extension ViewController: DiaryDetailViewDelegate{
//    func didSelectDelete(indexPath: IndexPath) {
//        self.diaryList.remove(at: indexPath.row)
//        //컬렉션뷰의 일기가 삭제되게
//        self.collectionView.deleteItems(at: [indexPath])
//    }
////    func didSelectStar(indexPath: IndexPath, isStar: Bool) {
////        self.diaryList[indexPath.row].isStart = isStar
////    }
//}
