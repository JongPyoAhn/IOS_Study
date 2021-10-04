//
//  File.swift
//  bruteForce
//
//  Created by 안종표 on 2021/10/04.
//

//let n = Int(String(readLine()!))!
//var w: [[Int]] = Array(repeating: [], count: n)
//var depth = 0
//var result = Int.max
//var count = 0
//var sum = 0
//
//
//var visited: [Bool] = Array(repeating: false, count: n)
//for i in 0..<n{
//    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//    w[i] = input
//}
//
//
//func dfs(_ depth: Int, _ now: Int, _ start: Int, _ answer: Int) {
//    if depth == n && now == start {
//        result = min(result, answer)
//        return
//    }
//    for i in 0..<n {
//        if !visited[i] && w[now][i] > 0{
//            visited[i] = true
//            sum += w[now][i]
//            if sum <= result{
//                dfs(depth + 1, i, start, sum)
//            }
//            visited[i] = false
//            sum -= w[now][i]
//        }
//    }
//}
//
//for i in 0..<n {
//    dfs(0, i, i, 0)
//}
//
//print(result)
