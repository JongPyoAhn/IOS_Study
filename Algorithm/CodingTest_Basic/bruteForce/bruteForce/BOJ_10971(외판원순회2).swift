//
//  File.swift
//  bruteForce
//
//  Created by 안종표 on 2021/10/04.
// 다시

//let n = Int(String(readLine()!))!
//var w: [[Int]] = Array(repeating: [], count: n)
//for i in 0..<n{
//    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//    w[i] = input
//}
//
//var depth = 0
//var result = Int.max
//var sum = 0
//
//
//var visited: [Bool] = Array(repeating: false, count: n)
//
//
//func dfs(_ depth: Int, _ now: Int, _ start: Int) {
//    if depth == n && now == start {
//        result = min(result, sum)
//        return
//    }
//    for i in 0..<n {
//        if !visited[i] && w[now][i] > 0{
//            visited[i] = true
//            sum += w[now][i]
//            if sum <= result{
//                dfs(depth + 1, i, start)
//            }
//            visited[i] = false
//            sum -= w[now][i]
//        }
//    }
//}
//
//dfs(0, 0, 0)
//
//print(result)
//BOJ_10971(원판원순회2)

