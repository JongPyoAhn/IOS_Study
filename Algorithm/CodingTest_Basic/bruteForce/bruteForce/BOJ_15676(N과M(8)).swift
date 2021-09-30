//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/30.
//

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
//
//var depth = 0
//var result: [String] = []
//
//func dfs(_ depth: Int, _ start: Int) {
//    if depth == m {
//        return print(result.joined(separator: " "))
//    }
//
//    for i in start..<n{
//        result.append(String(arr[i]))
//        dfs(depth + 1, i)
//        result.removeLast()
//    }
//}
//
//dfs(depth, 0)
