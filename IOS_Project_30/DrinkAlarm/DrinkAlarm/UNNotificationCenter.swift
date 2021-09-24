//
//  UNNotificationCenter.swift
//  DrinkAlarm
//
//  Created by 안종표 on 2021/09/24.
//

//28.
import Foundation
import UserNotifications
extension UNUserNotificationCenter {
     //여기에서 알럿객체를 받아서 리퀘스트를 만들고 최종적으로 노티피케이션 센터에 추가하는 함수를 작성
    func addNotificationRequest(by alert: Alert) {
        //알림의 내용
        let content = UNMutableNotificationContent()
        content.title = "물마실시간이에요"
        content.body = "세계보건기구(WHO)가 권장하는 하루 물 섭취량은 1.5 ~ 2L입니다."
        content.sound = .default
        //여기서 우리가 설정한대로 뱃지에 숫자를 1로 표시하는 알림이 발송되었다고 생각해보자.
        //그러면 사용자가 알림을 선택하거나 앱을 실행하면 뱃지가 자동적으로 사라질까요? NO
        //어떤 시점에 뱃지를 없앨지 설정해야댐
        content.badge = 1
     
        //30.
        //우리는 시간분만 신경쓰면 되니까 DateComponents를 시간분의 형태로 만들어주면됨.
        //alert.date를 통해서 시간분을 가져온다.
        //repeats는 스위치가 켜져있는동안 반복하면되고 꺼져있다면 중단하면됨.
        let component = Calendar.current.dateComponents([.hour, .minute], from: alert.date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: component, repeats: alert.isOn)
        
        //31.
        let request = UNNotificationRequest(identifier: alert.id, content: content, trigger: trigger)
        
        self.add(request, withCompletionHandler: nil)
    }
}
