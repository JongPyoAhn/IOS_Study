//
//  AlertListViewController.swift
//  DrinkAlarm
//
//  Created by 안종표 on 2021/09/24.
//

import UIKit
import UserNotifications

class AlertListViewController: UITableViewController {

    //31. 노티피케이션센터변수선언
    let userNotificationCenter = UNUserNotificationCenter.current()
    
    //9.
    var alerts: [Alert] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //7.
        let nibName = UINib(nibName: "AlertListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "AlertListCell")
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //userDefaults에 반영된 값대로 alerts에 반영
        alerts = alertList()
    }
    
    //19.
    @IBAction func addAlertButtonAction(_ sender: Any) {
        guard let addAlertVC = storyboard?.instantiateViewController(identifier: "AddAlertViewController") as? AddAlertViewController else {return}
        
        //생성된 알람을 리스트에 표현되도록 클러져에 구현
        addAlertVC.pickedDate = {[weak self] date in
            guard let self = self else {return}
            
            //21.
            var alertList = self.alertList()
            
            let newAlert = Alert(date: date, isOn: true)
            
            alertList.append(newAlert)
            alertList.sort{ $0.date < $1.date}
            
            self.alerts = alertList
            UserDefaults.standard.set(try? PropertyListEncoder().encode(self.alerts), forKey: "alerts")
            
            //31.새로만들어진 알럿이 새로만들어지는 물마시기알람센터에도 저장이된다.
            self.userNotificationCenter.addNotificationRequest(by: newAlert)
            
            self.tableView.reloadData()
            
        }
        
        self.present(addAlertVC, animated: true, completion: nil)
    }
    
    //20.
    //alerts라는 것을 프로퍼티리스트형태로 저장이되는데 우리가 이해할수있는 객체로 디코딩할수있음
    //userDefaults는 우리가 임의로 만든 구조체를 이해하지 못하기때문에 json처럼 인코딩,디코딩해서 우리에게 익숙하게 만들수있음.
    func alertList() -> [Alert] {
        guard let data = UserDefaults.standard.value(forKey: "alerts") as? Data,
              let alerts = try? PropertyListDecoder().decode([Alert].self, from: data) else {return []}
        return alerts
    }
}

//10. UITableView Datasource, Delegate

extension AlertListViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alerts.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "물마실 시간"
        default:
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlertListCell", for: indexPath) as? AlertListCell else {return UITableViewCell()}
        //셀의 알람이 만들어졌을때 켜진상태로 둘것임
        cell.alertSwitch.isOn = alerts[indexPath.row].isOn
        cell.timeLabel.text = alerts[indexPath.row].time
        cell.meridiemLabel.text = alerts[indexPath.row].meridiem
        
        //23.
        cell.alertSwitch.tag = indexPath.row
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    //12.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            //22. 노티피케이션 삭제 구현
            self.alerts.remove(at: indexPath.row)
            UserDefaults.standard.set(try? PropertyListEncoder().encode(self.alerts), forKey: "alerts")
            
            //32.알림삭제
            userNotificationCenter.removePendingNotificationRequests(withIdentifiers: [alerts[indexPath.row].id])
            self.tableView.reloadData()
            return
        default:
            break
        }
    }
    
}
