//
//  신고결과받기.swift
//  Programmers
//
//  Created by 안종표 on 2022/02/19.
//

//import Foundation
//
//let id_list = ["muzi", "frodo", "apeach", "neo"]
//let report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]
//let k = 2
//print(solution(id_list, report, k))
//
//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//    var reportSet = Set<String>()
//    var receiveDict = [String: Int]() //이름 : 메일받은횟수저장
//    var toDict = [String: [String]]() //누가 누구한테 신고당했는지 저장
//    var result = [Int]()
//    for i in report {
//        reportSet.insert(i)
//    }
//
//    for i in id_list{
//        receiveDict[i] = 0
//        toDict[i] = []
//    }
//
//    for i in reportSet{
//        let a = i.split(separator: " ").map{String($0)}
//        toDict[a[1]]?.append(a[0])
//    }
//
//    for i in toDict{
//        if i.value.count >= k {
//            for v in i.value{
//                receiveDict[v]! += 1
//            }
//        }
//    }
//
//    for i in id_list{
//        for (key, value) in receiveDict{
//            if key == i{
//                result.append(value)
//            }
//        }
//    }
//    return result
//}
