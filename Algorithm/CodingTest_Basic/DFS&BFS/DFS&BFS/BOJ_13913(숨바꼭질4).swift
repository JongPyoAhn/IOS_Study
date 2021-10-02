//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/02.
//

//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//var visited = Array(repeating: -1, count: 100001)
//var depth = Array(repeating: 0, count: 100001)
//var result: [Int] = []
//
//struct Queue{
//    var queue: [Int] = []
//
//    mutating func push(_ x: Int){
//        queue.append(x)
//    }
//    mutating func pop() -> Int{
//        queue.reverse()
//        let a = queue.popLast()!
//        queue.reverse()
//        return a
//    }
//    mutating func empty()-> Bool{
//        return queue.isEmpty
//    }
//
//}
//
//
//func bfs() -> Int{
//    var queue = Queue()
//    queue.push(n)
//    while true{
//        let x = queue.pop()
//
//        if x == k {
//            return depth[x]
//        }
//        if x > 0 && visited[x - 1] == -1 {
//            visited[x - 1] = x
//            queue.push(x - 1)
//            depth[x - 1] = depth[x] + 1
//
//        }
//        if x < 100000 && visited[x + 1] == -1{
//            visited[x + 1] = x
//            queue.push(x + 1)
//            depth[x + 1] = depth[x] + 1
//
//        }
//
//        if 2 * x <= 100000 && visited[2 * x] == -1{
//            visited[2 * x] = x
//            queue.push(2 * x)
//            depth[2 * x] = depth[x] + 1
//
//        }
//
//    }
//
//}
//if n == k{
//    print(0)
//    print(n)
//}else{
//    print(bfs())
//    var idx = visited[k]
//    while idx != n {
//        result.append(idx)
//        idx = visited[idx]
//    }
//    result.append(n)
//    if n != k {
//        result.reverse()
//        result.append(k)
//
//    }
//    print(result.map{String($0)}.joined(separator: " "))
//
//}
