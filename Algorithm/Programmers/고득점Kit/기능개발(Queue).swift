//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/12.
// O

//import Foundation
//print(solution([0,0,0,0], [100,50,34,25]))
//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var result = [Int]()
//    var queue = progresses
//    var speed = speeds
//    while !queue.isEmpty{
//        var count = 0
//        print(queue)
//        for i in 0..<queue.count{
//            queue[i] += speed[i]
//        }
//        for i in queue{
//            if i >= 100 {
//                count += 1
//                queue.removeFirst()
//                speed.removeFirst()
//            }else{
//                break
//            }
//        }
//        if count >= 1{
//            result.append(count)
//        }
//
//    }
//    return result
//}
