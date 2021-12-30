//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/30.
// 다시
//
//import Foundation
//let abc = readLine()!.split(separator: " ").map{Int(String($0))!}
//let a = abc[0]
//let b = abc[1]
//let c = abc[2]
//let sum = a + b + c
//var result = 0
//var queue = [(Int, Int)]()
//var visited = Array(repeating: Array(repeating: false, count: 10000), count: 10000)
//
//func bfs(_ a: Int, _ b: Int){
//    queue.append((a,b))
//    visited[a][b] = true
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        let z = sum - pop.0 - pop.1
//        let temp = [pop.0, pop.1, z]
//        if temp[0] == temp[1] && temp[1] == temp[2]{
//            result = 1
//            break
//        }
//
//        if temp[0] < temp[1] && !visited[temp[0] + temp[0]][temp[1] - temp[0]] {
//            visited[temp[0] + temp[0]][temp[1] - temp[0]] = true
//            queue.append((temp[0] + temp[0], temp[1] - temp[0]))
//        }else if temp[0] > temp[1] && !visited[temp[1] + temp[1]][temp[0] - temp[1]] {
//            visited[temp[1] + temp[1]][temp[0] - temp[1]] = true
//            queue.append((temp[1] + temp[1],temp[0] - temp[1]))
//        }
//
//        if temp[1] < temp[2] && !visited[temp[1] + temp[1]][temp[2] - temp[1]] {
//            visited[temp[1] + temp[1]][temp[2] - temp[1]] = true
//            queue.append((temp[1] + temp[1], temp[2] - temp[1]))
//        }else if temp[2] < temp[1] && !visited[temp[2] + temp[2]][temp[1] - temp[2]] {
//            visited[temp[2] + temp[2]][temp[1] - temp[2]] = true
//            queue.append((temp[2] + temp[2], temp[1] - temp[2]))
//        }
//
//    }
//
//}
//bfs(a, b)
//print(result)
