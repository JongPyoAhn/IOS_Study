//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/20.
// 그래프문제가 생소했던탓에.. DFS는 참고했지만 BFS는 성공!


//let n = Int(String(readLine()!))!
//var graph : [[Int]] = Array(repeating: [], count: n + 1)
//for _ in 0..<n{
//    let a = readLine()!.split(separator: " ").map{Int(String($0))!}
//    graph[a[0]].append(a[1])
//    graph[a[1]].append(a[0])
//    graph[a[0]].sort()
//    graph[a[1]].sort()
//}
//
//var cycle = false
//var visited = Array(repeating: false, count: 3001)
//var checked = Array(repeating: false, count: n + 1)
//var result = Array(repeating: 0, count: n + 1)
//func dfs(_ depth: Int, _ startNode: Int, _ currentNode: Int){
//
//    if depth >= 2 && currentNode == startNode{
//        checked[currentNode] = true
//        return
//    }
//    visited[currentNode] = true
//    for i in graph[currentNode]{
//        if !visited[i]{
//            dfs(depth + 1, startNode, i)
//        }else{
//            if depth >= 2 && startNode == i{
//                dfs(depth, startNode, i)
//            }
//        }
//    }
//}
//for i in 1...n{
//    visited = Array(repeating: false, count: 3001)
//    dfs(0, i, i)
//}
//for i in 1...n{
//    if !checked[i]{
//        result[i] = bfs(i)
//    }else{
//        result[i] = 0
//    }
//}
//
//func bfs(_ x: Int) -> Int{
//    var bfsVisit = Array(repeating: false, count: 3001)
//    var queue = [(Int, Int)]()
//    queue.append((x, 0))
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        if checked[pop.0]{//사이클에 닿은거임.
//            return pop.1
//        }
//        for i in graph[pop.0]{
//            if !bfsVisit[i]{
//                queue.append((i, pop.1 + 1))
//                bfsVisit[i] = true
//            }
//        }
//
//    }
//    return 0
//}
//result.removeFirst()
//print(result.map{String($0)}.joined(separator: " "))
