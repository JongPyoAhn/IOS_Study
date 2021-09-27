//
//  File.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/09/27.
//

//struct Queue{
//    var que: [Int] = []
//    mutating func push(_ x: Int) {
//        que.append(x)
//    }
//    mutating func pop() -> Int {
//        que.reverse()
//        if let a = que.popLast() {
//            que.reverse()
//            return a
//        }
//        return 0
//    }
//    func empty() -> Bool {
//        return que.isEmpty
//    }
//    func size() -> Int{
//        return que.count
//    }
//}
//
//func bfs(_ n: Int, _ k: Int) -> Int {
//    var queue = Queue()
//    queue.push(n)
//
//    while !queue.empty() {
//        let data = queue.pop()
//        if data == k {
//            break
//        }
//        if data > 0 && !visited[data - 1] {
//            queue.push(data - 1)
//            visited[data - 1] = true
//            depth[data - 1] = depth[data] + 1
//        }
//        if data < 100000 && !visited[data + 1] {
//            queue.push(data + 1)
//            visited[data + 1] = true
//            depth[data + 1] = depth[data] + 1
//        }
//        if data * 2 < 100001 && !visited[2 * data] {
//            queue.push(2 * data)
//            visited[2 * data] = true
//            depth[data * 2] = depth[data] + 1
//        }
//    }
//    return depth[k]
//}
//
//
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = arr[0]
//let k = arr[1]
//var visited: [Bool] = Array(repeating: false, count: 100001)
//var depth: [Int] = Array(repeating: 0, count: 100001)
//let result = bfs(n, k)
//print(result)
