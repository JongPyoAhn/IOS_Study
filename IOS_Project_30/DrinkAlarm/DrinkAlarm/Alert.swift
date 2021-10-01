//
//  Alert.swift
//  DrinkAlarm
//
//  Created by 안종표 on 2021/09/24.
//

import Foundation
//8.
struct Alert: Codable {
    var id: String = UUID().uuidString
    var date: Date
    var isOn: Bool
    
    //사용성이 있도록 데이트값을 받으면 우리가 바로 라벨에 뿌려줄 수 있는 시간값과 오전오후값을 뱉을수있도록만듦
    var time: String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        return timeFormatter.string(from: date)
    }
    
    //이렇게 하면 날짜값을 받아서 그중에 현재 한국의 시간이 오전의 값인지 오후의 값인지를 표현하게 된다.
    var meridiem: String {
        let meridiemFormatter = DateFormatter()
        meridiemFormatter.dateFormat = "a" //a가 오전오후를 설정하는 dateFormat문자열
        meridiemFormatter.locale = Locale(identifier: "ko") //현재 한국의 시간이 오전인지 오후인지를 하기위함
        return meridiemFormatter.string(from: date)
    }
}
