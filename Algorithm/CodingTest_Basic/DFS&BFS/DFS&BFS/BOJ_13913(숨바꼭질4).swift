//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/02.
//

//struct Queue{
//    var enqueue = [Int]()
//    var dequeue = [Int]()
//    mutating func insert(_ x: Int){
//        enqueue.append(x)
//    }
//
//    mutating func remove() -> (Int){
//        if dequeue.isEmpty{
//            dequeue = enqueue.reversed()
//            enqueue.removeAll()
//        }
//        return dequeue.removeLast()
//    }
//
//    func empty() -> Bool{
//        if enqueue.isEmpty && dequeue.isEmpty{
//            return true
//        }else{
//            return false
//        }
//    }
//}
//
//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//var visited = Array(repeating: -1, count: 100001)
//var depth = Array(repeating: 0, count: 100001)
//func bfs(_ start: Int){
//
//    var queue = Queue()
//    visited[start] = 0
//    queue.insert(start)
//    while !queue.empty(){
//        let x = queue.remove()
//        if x == k{
//            print(depth[k])
//            break
//        }
//        if x - 1 >= 0 && visited[x - 1] == -1{
//            visited[x - 1] = x
//            queue.insert(x - 1)
//            depth[x - 1] = depth[x] + 1
//        }
//        if x + 1 < 100001 && visited[x + 1] == -1{
//            visited[x + 1] = x
//            queue.insert(x + 1)
//            depth[x + 1] = depth[x] + 1
//        }
//        if 2 * x < 100001 && visited[2 * x] == -1{
//            visited[2 * x] = x
//            queue.insert(2 * x)
//            depth[2 * x] = depth[x] + 1
//        }
//
//    }
//
//}
//if n == k{
//    print(0)
//    print(n)
//}else{
//    bfs(n)
//    var idx = k
//    var result = [Int]()
//    while idx != n{
//        result.append(idx)
//        idx = visited[idx]
//    }
//    result.append(n)
//    result.reverse()
//    print(result.map{String($0)}.joined(separator: " "))
//}
