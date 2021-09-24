//
//  AlertListCell.swift
//  DrinkAlarm
//
//  Created by 안종표 on 2021/09/24.
//

import UIKit
import UserNotifications
class AlertListCell: UITableViewCell {
    //31.
    let userNotificationCenter = UNUserNotificationCenter.current()
    
    //6.
    @IBOutlet weak var meridiemLabel: UILabel!
    @IBOutlet weak var alertSwitch: UISwitch!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    //23.
    //userDefaults에 저장된 값에 따라서 스위치를 제어할 수 있음
    @IBAction func alertSwitchValueChanged(_ sender: UISwitch) {
        guard let data = UserDefaults.standard.value(forKey: "alerts") as? Data,
              var alerts = try? PropertyListDecoder().decode([Alert].self, from: data) else {return}
        //sender의 isOn은 스위치의 isOn값임.변경되는 스위치의 on/off값을 해당하는 배열의 isOn으로 변경
        //이 변경된 값을 다시 alerts라는 userDefaults에 최신화
        alerts[sender.tag].isOn = sender.isOn
        UserDefaults.standard.set(try? PropertyListEncoder().encode(alerts), forKey: "alerts")
        
        
        //31. 껏다켠경우에는 추가를해줘야함, 알럿의 배열에서 해당되는 셀에 해당하는 알럿만 추가하라는것
        if sender.isOn {
            userNotificationCenter.addNotificationRequest(by: alerts[sender.tag])
        }else {
            //32.
            userNotificationCenter.removePendingNotificationRequests(withIdentifiers: [alerts[sender.tag].id])
        }
    }
    
    
}
    
