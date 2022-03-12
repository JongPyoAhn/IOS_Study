//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/12.
//
//
//import Foundation
//
////func solution(_ n:Int, _ edges:[[Int]]) -> Int64 {
////    var graph = Array(repeating: [Int](), count: n)
////    for i in edges{
////        graph[i[1]].append(i[0])
////        graph[i[0]].append(i[1])
////    }
////    var visited = Array(repeating: false, count: n)
////    var count = 0
////    func dfs(_ depth: Int, _ start: Int, _ fixedStart: Int){
////
////        if depth == 3{
////            count += 1
////            graph[fixedStart].append(start)
////            return
////        }
////
////        for i in graph[start]{
////            if !visited[i]{
////                visited[i] = true
////                dfs(depth + 1, i, fixedStart)
////                visited[i] = false
////
////            }
////
////        }
////    }
////
////    for i in 0..<n{
////        visited[i] = true
////        dfs(1, i, i)
////        print("i : \(i) count : \(count)")
////        print(graph)
////        visited[i] = false
////    }
////
////    return Int64(count)
////}
////let n = 4
////let edges = [[2,3],[0,1],[1,2]]
////print(solution(n, edges))
//func solution(_ n:Int, _ edges:[[Int]]) -> Int64 {
//    var graph = Array(repeating: [Int](), count: n)
//    for i in edges{
//        graph[i[1]].append(i[0])
//        graph[i[0]].append(i[1])
//    }
//    var visited = Array(repeating: false, count: n)
//    var count = 0
//
//    func dfs(_ depth: Int, _ start: Int, _ fixedStart: Int){
//
//        if depth == 3{
//            count += 1
//            visitGraph[fixedStart].append(start)
//            return
//        }
//
//        for i in visitGraph[start]{
//
//            if !visited[i]{
//                print("visited[i] : \(i)")
//                visited[i] = true
//                dfs(depth + 1, i, fixedStart)
//                visited[i] = false
//
//            }
//
//        }
//    }
//
//    var visitGraph = graph
//    for i in 0..<n{
//        visited[i] = true
//        visitGraph = graph
//        dfs(1, i, i)
//        print("i : \(i) count : \(count)")
//        print(visitGraph)
//        visited[i] = false
//    }
//
//
//    return Int64(count)
//}
//let n = 4
//let edges = [[2,3],[0,1],[1,2]]
//print(solution(n, edges))
