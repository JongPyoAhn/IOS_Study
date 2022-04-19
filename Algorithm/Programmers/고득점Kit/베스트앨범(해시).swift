//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/19.
//

//import Foundation
//print(solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500]))
//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var dict = [String:Int]()
//    for i in genres{
//        dict[i] = 0
//    }
//    for i in 0..<genres.count{
//        dict[genres[i]]! += plays[i]
//    }
//    let sortedDict = dict.sorted{$0.value > $1.value}
//    var rankDict = [String: Int]()
//    for i in 0..<sortedDict.count {
//        rankDict[sortedDict[i].key] = i
//    }
//    
//    var uniqueDict = [Int: (String , Int)]()
//    for i in 0..<genres.count{
//        uniqueDict[i] = (genres[i], plays[i])
//    }
//    var sortedUniqueDict = uniqueDict.sorted{
//        rankDict[$0.value.0]! < rankDict[$1.value.0]!
//    }
//    sortedUniqueDict.sort{
//        if $0.value.0 == $1.value.0{
//            if $0.value.1 > $1.value.1{
//                return $0.value.1 > $1.value.1
//            }else if $0.value.1 == $1.value.1{
//                return $0.key < $1.key
//            }
//        }
//        return false
//    }
//    var result = [Int]()
//    var cnt = 0
//    var temp = sortedUniqueDict[0].value.0
////    print(sortedUniqueDict)
//    for i in 0..<sortedUniqueDict.count{
//        if temp == sortedUniqueDict[i].value.0{cnt += 1}
//        else{
//            cnt = 1
//        }
//        if cnt <= 2{
//            result.append(sortedUniqueDict[i].key)
//        }
//        temp = sortedUniqueDict[i].value.0
//    }
//    return result
//}
