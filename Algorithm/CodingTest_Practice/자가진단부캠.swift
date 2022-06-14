//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/06/08.
//

//import Foundation
//var arr = [3, 5, 7, 9, 1]
//func solution(_ arr: [Int]) -> [Int]{
//    var dict = [Int: Int]()
//    var result = [Int]()
//    for i in arr{
//        if dict[i] == nil{
//            dict[i] = 1
//        }else{
//            dict[i]! += 1
//        }
//    }
//    let sortedDict = dict.sorted{
//        $0.key < $1.key
//    }
//    for (_, value) in sortedDict{
//        if value >= 2 {
//            result.append(value)
//        }
//    }
//    if result.count == 0{
//        result.append(-1)
//    }
//    return result
//}
//print(solution(arr))
