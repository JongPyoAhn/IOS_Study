//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/21.
// O

//import Foundation
//
//func solution(_ record:[String]) -> [String] {
//    var dict = [String:String]()
//    var uid = [[String]]()
//    var result = [String]()
//    for i in record{
//        let str = i.split(separator: " ").map{String($0)}
//        let command = str[0]
//        let id  = str[1]
//        if str.count >= 3{
//            let nickName = str[2]
//            dict[id] = nickName
//        }
//        switch command{
//        case "Enter":
//            uid.append([id, "님이 들어왔습니다."])
//        case "Leave":
//            uid.append([id, "님이 나갔습니다."])
//        default:
//            break
//        }
//
//    }
//    for i in 0..<uid.count{
//        uid[i][0] = dict[uid[i][0]]!
//    }
//    for i in 0..<uid.count{
//        result.append(uid[i].joined())
//    }
//    
//    
//    return result
//}
//print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
