//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/03/15.
//

//import Foundation

//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//    var graph = Array(repeating: [Int](), count: n)
//
//    //graph = [[0,1], [0,1], [2]]
//    for i in 0..<n{
//        for j in 0..<computers[i].count{
//            if computers[i][j] == 1{
//                graph[i].append(j)
//            }
//
//        }
//    }
//
//    var visited = Array(repeating: false, count: n)
//    var count = 0
//    func dfs(_ insu: Int){
//        visited[insu] = true
//        for i in graph[insu]{
//            if !visited[i]{
//                visited[i] = true
//                dfs(i)
//            }
//        }
//    }
//    for i in 0..<n{
//        if !visited[i]{
//            dfs(i)
//            count += 1
//        }
//    }
//
//
//
//    return count
//}
//var n = 3
//var computers = [[1, 1, 0], [1, 1, 1], [0, 1, 1]]
//print(solution(n, computers))
