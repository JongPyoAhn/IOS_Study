//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/09/09.
// O

//import Foundation
//let nmv = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmv[0]
//let m = nmv[1]
//let v = nmv[2]
//var graph = Array(repeating: [Int](), count: n + 1)
//for _ in 0..<m{
//    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
//    graph[line[0]].append(line[1])
//    graph[line[1]].append(line[0])
//}
//for i in 1...n{
//    graph[i].sort()
//}
//
//var dfsVisited = Array(repeating: false, count: n + 1)
//var result = ""
//func dfs(_ start: Int){
//    dfsVisited[start] = true
//    result += "\(start) "
//    for i in graph[start]{
//        if !dfsVisited[i]{
//            dfs(i)
//        }
//    }
//}
//
//var bfsResult = ""
//func bfs(_ start: Int){
//    var visited = Array(repeating: false, count: n + 1)
//    var queue = [Int]()
//    
//    visited[start] = true
//    queue.append(start)
//    
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        bfsResult += "\(pop) "
//        for i in graph[pop]{
//            if !visited[i]{
//                visited[i] = true
//                queue.append(i)
//            }
//        }
//    }
//}
//dfs(v)
//bfs(v)
//print(result)
//print(bfsResult)

