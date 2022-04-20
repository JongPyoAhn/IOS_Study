//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/20.
//

//import Foundation
//
//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    var result = n - lost.count
//    var lostTemp = lost.sorted()
//    var reserved = reserve.sorted()
//    for i in 0..<lostTemp.count{
//        if let idx = reserved.firstIndex(of: lostTemp[i]){
//            lostTemp[i] = -1
//            reserved.remove(at: idx)
//            result += 1
//        }
//
//    }
//    
//    for i in 0..<reserved.count{
//        if lostTemp.contains(reserved[i] - 1){
//            let idx = lostTemp.firstIndex(of: reserved[i] - 1)
//            lostTemp.remove(at: idx!)
//            result += 1
//            continue
//        }
//        if lostTemp.contains(reserved[i] + 1){
//            let idx = lostTemp.firstIndex(of: reserved[i] + 1)
//            lostTemp.remove(at: idx!)
//            result += 1
//        }
//
//    }
//    return result
//}
//
//print(solution(5, [2, 3, 4], [1, 2, 3]))
