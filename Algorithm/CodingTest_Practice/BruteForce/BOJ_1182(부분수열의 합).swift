//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/13.
// 16%에서 틀림

//import Foundation
//
//let ns = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = ns[0]
//let s = ns[1]
//
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var countDepth = 1
//var visited = Array(repeating: false, count: 21)
//var result = [Int]()
//var count = 0
//func dfs(_ depth: Int, _ start: Int){
//    if depth == countDepth{
//        var sum = 0
//        for i in result{
//            sum += i
//        }
//        if sum == s {
//            count += 1
//        }
//        print(result)
//        return
//    }
//    if start + 1 < n{
//        while countDepth < n {
//            for j in (start + 1)..<n{
//                if !visited[j]{
//                    visited[j] = true
//                    result.append(arr[j])
//                    dfs(depth + 1, start)
//                    visited[j] = false
//                    result.removeLast()
//                }
//            }
//            countDepth += 1
//        }
//
//    }
//}
//for i in 0..<n{
//    countDepth = 1
//    visited[i] = true
//    result.append(arr[i])
//
//    if arr[i] == s {
//        count += 1
//    }
//    dfs(0, i)
//    result.removeAll()
//}
//print(count)
