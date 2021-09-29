//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/29.
//

//import Foundation
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = input[0]
//let m = input[1]
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var visited: [Bool] = Array(repeating: false, count: n)
//var depth: Int = 0
//var strResult = ""
//var result: [Int] = []
//arr.sort()
//
//func dfs(_ depth: Int) {
//    if depth == m {
//        strResult += result.map{String($0)}.joined(separator: " ")
//        strResult += "\n"
//        return
//    }
//    for i in 0..<n{
//        if !visited[i] {
//            visited[i] = true
//            result.append(arr[i])
//            dfs(depth + 1)
//            result.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//dfs(depth)
//print(strResult)
