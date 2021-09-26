//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/09/26.
//

//import Foundation
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = arr[0] //정점의 개수
//let m = arr[1] //간선의 개수
//var depth = 0
//var list: [[Int]] = Array(repeating: [], count: n + 1)
//var visited: [Bool] = Array(repeating: false, count: n + 1)
//var count = 0
//
//for _ in 1...m {
//    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
//    list[line[0]].append(line[1])
//    list[line[1]].append(line[0])
//}
//
//
//
//func dfs(_ now: Int ,_ depth: Int) {
//    visited[now] = true
//    for i in 0..<list[now].count{
//        let next = list[now][i]
//        if !visited[next]{
//            dfs(next, depth + 1)
//        }
//    }
//}
//
//
//for i in 1...n{
//    if !visited[i]{
//        count += 1
//        dfs(i, depth)
//    }
//}
//
//print(count)
