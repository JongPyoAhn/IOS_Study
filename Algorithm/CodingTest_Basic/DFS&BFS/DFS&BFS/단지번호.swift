//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/05.
//


//
//let n = Int(String(readLine()!))!
//var arr = Array(repeating: [Int](), count: n)
//for i in 0..<n{
//    let str = String(readLine()!)
//    for k in str{
//        arr[i].append(Int(String(k))!)
//    }
//}
//
//
//var depth = 0
//var count = 0
//var visited: [Bool] = Array(repeating: false, count: n + 1)
//
//func dfs(_ depth: Int, _ now: Int) {
//    visited[now] = true
//    for i in 0..<arr[now].count {
//        let next = arr[now][i]
//        if !visited[next] {
//            dfs(depth + 1, next)
//        }
//    }
//    
//}
//
//for i in 0..<n {
//    if !visited[i]{
//        count += 1
//        dfs(i,depth)
//    }
//}
//print(count)
