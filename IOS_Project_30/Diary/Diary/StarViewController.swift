//
//  StarViewController.swift
//  Diary
//
//  Created by 안종표 on 2021/12/29.
//

import UIKit

class StarViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private var diaryList = [Diary]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureCollectionView()
        self.loadStarDiaryList()
        //이렇게하면 일기가 수정,삭제,즐겨찾기 토글이벤트가 일어났을때 일기장화면과 즐겨찾기화먄에 모든 이벤트를 전달할수있음.
        //수정이 일어났을 때 관찰
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(editDiaryNotification(_:)),
            name: NSNotification.Name("editDiary"),
            object: nil)
        //star토글이 일어났을 때 관찰
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(starDiaryNotification(_:)),
            name: NSNotification.Name("starDiary"),
            object: nil)
        //수정이 일어났을 때 관찰
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(deleteDiaryNotification(_:)),
            name: NSNotification.Name("deleteDiary"),
            object: nil)
    }
 
    
    private func configureCollectionView(){
        self.collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        self.collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    //유저디폴트에 저장된 다이어리리스트에서 즐겨찾기된 일기만 가져오게된다.
    private func loadStarDiaryList(){
        let userDefaults = UserDefaults.standard
        guard let data = userDefaults.object(forKey: "diaryList") as? [[String: Any]] else {return}
        print(data)
        self.diaryList = data.compactMap{
            guard let title = $0["title"] as? String else{return nil}
            guard let contents = $0["contents"] as? String else{return nil}
            guard let date = $0["date"] as? Date else {return nil}
            guard let isStar = $0["isStart"] as? Bool else {return nil}
            return Diary(title: title, contents: contents, date: date, isStart: isStar)
        }.filter({
            $0.isStart == true
        }).sorted(by: {
            $0.date.compare($1.date) == .orderedDescending
        })
    }
    
    //수정이일어났을때호출하는 셀렉터메소드
    @objc func editDiaryNotification(_ notification: Notification){
        guard let diary = notification.object as? Diary else {return}
        guard let row = notification.userInfo?["indexPath.row"] as? Int else {return}
        self.diaryList[row] = diary
        self.diaryList = self.diaryList.sorted(by: {
            $0.date.compare($1.date) == .orderedDescending
        })
        collectionView.reloadData()
    }
    
    //즐겨찾기토글이벤트가 발생했을때 호출
    @objc func starDiaryNotification(_ notification: Notification){
        guard let starDiary = notification.object as? [String: Any] else {return}
        guard let isStar = starDiary["isStar"] as? Bool else {return}
        guard let indexPath = starDiary["indexPath"] as? IndexPath else {return}
        //즐겨찾기한 다이어리객체를 가져온다음에 아래 if문에서 다이어리객체 추가
        guard let diary = starDiary["diary"] as? Diary else {return}
        if isStar {
            //즐겨찾기가 된 일기를 추가
            self.diaryList.append(diary)
            self.diaryList = self.diaryList.sorted(by: {
                $0.date.compare($1.date) == .orderedDescending
            })
            self.collectionView.reloadData()
        }else{ //즐겨찾기가 해제되면 삭제되게 만듦
            self.diaryList.remove(at: indexPath.row)
            self.collectionView.deleteItems(at: [indexPath])
        }
    }
    
    @objc func deleteDiaryNotification(_ notification: Notification){
        guard let indexPath = notification.object as? IndexPath else {return}
        //일기장즐겨찾기에는 일기가 1개있고 리스트에는 2개가있을때 리스트에있는 두번째일기를 삭제하면 여기서 에러가남.
        //즐겨찾기 수정삭제 노티피케이션에 인덱스패스를 보내줘서 일기장화면과 즐겨찾기 화면에 전달되게되면 일기장화면과 즐겨찾기화면의 일기개수가 다를경우 이렇게 인덱스 아웃오브렌지가 발생함.
        //예를들어 즐겨찾기화면에는 일기가 1개추가됫는데 일기장화면에서 2번째일기를 지우면 즐겨찾기 화면에서도 노티피케이션에서 전달받은 인덱스패스값으로 배열을 삭제하기때문에 즐겨찾기화면에는 일기가 한개밖에없는데 두번째 일기를 삭제하라고하니 인덱스아웃오브렌지 이 에러를 해결하기위해서는 일기를 추가할때마다 다이어리객체에 일기의 고유한 값 이 일기를 특정할 수 있는 고유한 값을 저장할 수 있게 만들어야하고 즐겨찾기 수정 삭제 노티피케이션도 인덱스패스대신 이 일기를 특정할 수 있는 고유한값을 전달하게만들어주고 전달받은쪽에서 배열에 이 고유한값의 일기가 있는지 확인하고 이 고유한값에 해당되는 일기의 인덱스로 수정삭제즐겨찾기 상태업데이트가 되게 구현해줘야한다.
        self.diaryList.remove(at: indexPath.row)
        self.collectionView.deleteItems(at: [indexPath])
        
    }
    
    
    private func dateToString(_ date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yy년 MM월 dd일(EEEEE)"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
}

extension StarViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.diaryList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StarCell", for: indexPath) as? StarCell else {return UICollectionViewCell()}
        let diary = self.diaryList[indexPath.row]
        cell.titleLabel.text = diary.title
        cell.dateLabel.text = self.dateToString(diary.date)
        return cell
        
    }
    
    
}
extension StarViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 20, height: 80)
    }
}
extension StarViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "DiaryDetailViewController") as? DiaryDetailViewController else {return}
        let diary = self.diaryList[indexPath.row]
        viewController.diary = diary
        viewController.indexPath = indexPath
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
