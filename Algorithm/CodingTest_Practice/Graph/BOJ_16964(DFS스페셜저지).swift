//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/26.
//

//import Foundation
//let n = Int(String(readLine()!))!
//var arr = [[Int]]()
//var graph = Array(repeating: [Int](), count: n + 1)
//for _ in 0..<n-1{
//    let a = readLine()!.split(separator: " ").map{Int(String($0))!}
//    graph[a[0]].append(a[1])
//    graph[a[1]].append(a[0])
//}
//var order = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dfsOrder = Array(repeating: -1, count: order.count + 1)
//for i in 0..<order.count{
//    dfsOrder[order[i]] = i + 1
//}
//var result = [Int]()
//var visited = Array(repeating: false, count: n + 1)
//func dfs(_ start: Int){
//    visited[start] = true
//    result.append(start)
//    for i in graph[start]{
//        if !visited[i]{
//            dfs(i)
//        }
//    }
//}
//for i in 1...n{
//    graph[i].sort{dfsOrder[$0] < dfsOrder[$1]}
//}
//dfs(1)
//
//if result == order {
//    print(1)
//}else{
//    print(0)
//}

