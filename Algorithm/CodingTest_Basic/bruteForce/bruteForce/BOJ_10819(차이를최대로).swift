//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/28.
// O
//import Foundation
//let n = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var visited = Array(repeating: false, count: 100)
//var result = [Int]()
//var maxResult = 0
//
//func dfs(_ depth: Int){
//    if depth == n{
//        var temp = 0
//        for i in 1..<n{
//            temp += abs(result[i - 1] - result[i])
//        }
//
//        maxResult = max(maxResult,temp)
//
//        return
//    }
//    for i in 0..<n{
//        if !visited[i]{
//            result.append(arr[i])
//            visited[i] = true
//            dfs(depth + 1)
//            result.removeLast()
//            visited[i] = false
//        }
//    }
//
//}
//dfs(0)
//print(maxResult)

