//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/26.
// O

//let arr = readLine()!.split(separator: " ").map{ Int(String($0))!}
//let n = arr[0]
//let m = arr[1]
//var basic = Array(repeating: 0, count: n + 1)
//var depth = 0
//var visited: [Bool] = Array(repeating: false, count: n + 1)
//var result: [Int] = []
//var str = ""
//for i in 1...n {
//    basic[i] = i
//}
//
//func dfs(_ depth: Int) {
//    if depth == m {
//        str += result.map{String($0)}.joined(separator: " ")
//        str += "\n"
//        return
//    }
//    for i in 1...n {
//        result.append(basic[i])
//        dfs(depth + 1)
//        result.removeLast()
//    }
//
//}
//dfs(depth)
//print(str)
