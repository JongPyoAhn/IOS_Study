//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/13.
// 다시

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0] //사다리의 수
//let m = nm[1] // 뱀의 수
//
//var nArr = [[Int]]()
//var mArr = [[Int]]()
//var queue = [(Int, Int)]()
//var visited = Array(repeating: false, count: 101)
//var isChecked = true
//for _ in 0..<n{
//    nArr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//for _ in 0..<m{
//    mArr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//func bfs(){
//    queue.append((1,0))
//    visited[1] = true
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        if pop.0 == 100{
//            print(pop.1)
//            break
//        }
//
//
//        for i in 1...6{
//            if pop.0 + i <= 100 && !visited[pop.0 + i] {
//                for j in 0..<n{
//                    if nArr[j][0] == pop.0 + i{
//                        queue.append((nArr[j][1], pop.1 + 1))
//                        visited[nArr[j][1]] = true
//                        isChecked = false
//                    }
//                }
//                for j in 0..<m{
//                    if mArr[j][0] == pop.0 + i{
//                        queue.append((mArr[j][1], pop.1 + 1))
//                        visited[mArr[j][1]] = true
//                        isChecked = false
//                    }
//                }
//
//                if isChecked{
//                    queue.append((pop.0 + i, pop.1 + 1))
//                    visited[pop.0 + i] = true
//                }
//            }
//            isChecked = true
//        }
//
//    }
//}
//
//bfs()

