//
//  main.swift
//  codingtest
//
//  Created by 안종표 on 2021/09/11.
//

//import Foundation
//
//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//    var dict = [String:Int]() // 신고 받은애들 횟수를 저장
//    var reDict = [String:Int]() // 신고 한 애들 메시지 받은거 저장
//    var result :[Int] = Array(repeating: 0, count: id_list.count)
//    var realReport: [String] = [] // 신고 중복을 없앰
//    var arr = [[String]]()
//
//    //중복제거
//    let repitition = Set(report)
//    realReport = Array(repitition)
//
//    for i in 0..<id_list.count{
//        dict[id_list[i]] = 0
//        reDict[id_list[i]] = 0//
//    }
//
//    for i in 0..<realReport.count{
//        arr.append(realReport[i].split(separator: " ").map{String($0)})
//        dict[arr[i][1]]! += 1
//
//    }
//    for i in 0..<realReport.count{
//        if dict[arr[i][1]]! >= k {
//            let v = id_list.firstIndex(of: arr[i][0])!
//            result[v] += 1
//        }
//    }
//
//
//    return result
//}
////    for key in dict.keys{
////        if dict[key]! >= k{
////            for j in 0..<arr.count{
////                if key == arr[j][1] {
////                    let v = id_list.firstIndex(of: arr[j][0])!
////                    result[v] += 1
////                }
////            }
////        }
////    }
//
////let id_list = ["muzi", "frodo", "apeach", "neo"]
////let report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]
////let k = 2
//let id_list = ["con", "ryan"]
//let report = ["ryan con", "ryan con", "ryan con", "ryan con"]
//let k = 3
//print(solution(id_list, report, k))




