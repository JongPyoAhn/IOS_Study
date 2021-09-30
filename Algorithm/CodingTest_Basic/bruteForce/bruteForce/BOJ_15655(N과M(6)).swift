//
//  mani.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/30.
// O

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var depth: Int = 0
//var resultStr: String = ""
//var visited: [Bool] = Array(repeating: false, count: n)
//var result: [Int] = []
//arr.sort()
//func dfs(_ depth: Int) {
//    if depth == m{
//        if result.sorted() == result {
//            resultStr += result.map{String($0)}.joined(separator: " ")
//            resultStr += "\n"
//        }
//        return
//    }
//
//    for i in 0..<n{
//        if !visited[i]{
//            visited[i] = true
//            result.append(arr[i])
//            dfs(depth + 1)
//            visited[i] = false
//            result.removeLast()
//        }
//    }
//
//
//}
//
//
//dfs(depth)
//print(resultStr)
