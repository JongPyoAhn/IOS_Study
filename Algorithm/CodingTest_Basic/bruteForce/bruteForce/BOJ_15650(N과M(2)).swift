//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/25.
//


//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = arr[0]
//let m = arr[1]
//
//var visited = Array(repeating: false, count: n + 1)
//var depth = 0
//var result: [Int] = []
//
//dfs(depth)
//
//func dfs(_ depth: Int){
//    if depth == m {
//        if result.sorted() == result {
//            print(result.map{String($0)}.joined(separator: " "))
//            return
//        }else {
//            return
//        }
//
//    }
//    for i in 1...n{
//        if !visited[i] {
//            visited[i] = true
//            result.append(i)
//            dfs(depth + 1)
//            visited[i] = false
//            result.removeLast()
//        }
//    }
//}

