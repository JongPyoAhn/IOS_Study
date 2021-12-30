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
    }
    //콜렉션뷰의 속성을정의
    private func configureCollectionView(){
        self.collectionView.collectionViewLayout = UICollectionViewLayout()
        self.collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
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
            guard let title = $0["title"] as? String else {return nil}
            guard let contents = $0["contents"] as? String else {return nil}
            guard let date = $0["date"] as? Date else {return nil}
            guard let isStart = $0["isStart"] as? Bool else {return nil}
            return Diary(title: title, contents: contents, date: date, isStart: isStart)
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
