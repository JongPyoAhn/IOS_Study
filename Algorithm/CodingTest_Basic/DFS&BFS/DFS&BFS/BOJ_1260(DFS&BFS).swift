//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/09/09.
//

//let arr = readLine()!.split(separator: " ").map{Int($0)!}
//let n = arr[0]
//let m = arr[1]
//var v = arr[2]
//var graph: [[Int]] = Array(repeating: [], count: n + 1)
//var visited = Array(repeating: false, count: n + 1)
//var queue = Queue<Int>()
//for _ in 1...m{
//    let a: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[a[0]].append(a[1])
//    graph[a[1]].append(a[0])
//    graph[a[0]].sort()
//    graph[a[1]].sort()
//}
//DFS(graph, v, &visited)
//visited = Array(repeating: false, count: n + 1)
//print("")
//BFS(graph, &v, &visited)
//
//func DFS(_ graph: [[Int]], _ v: Int, _ visited: inout [Bool]){
//    visited[v] = true
//    print(v,terminator: " ")
//
//    for i in graph[v]{
//        if !visited[i] {
//            DFS(graph, i, &visited)
//        }
//    }
//}
//
//
//func BFS(_ graph: [[Int]], _ v: inout Int, _ visited: inout [Bool]){
//    visited[v] = true
//    queue.enque(v)
//
//    while !queue.isEmpty(){
//        v = queue.deque()
//        print(v, terminator: " ")
//
//        for i in graph[v]{
//            if !visited[i] {
//                queue.enque(i)
//                visited[i] = true
//            }
//        }
//    }
//}
//
//
//
//
//
//struct Queue<T>{
//    var queue :[Int] = []
//    mutating func enque(_ x: Int){
//        queue.append(x)
//    }
//    mutating func deque() -> Int{
//        if !queue.isEmpty{
//            queue.reverse()
//            let a = queue.removeLast()
//            queue.reverse()
//            return a
//        }else {
//            return 0
//        }
//    }
//    func isEmpty() -> Bool {
//        return queue.isEmpty
//    }
//}

