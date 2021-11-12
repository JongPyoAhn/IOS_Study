//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/11/11.
// 

//let t = Int(String(readLine()!))!
//var queue: [(Int, Int, Int)] = []
//var visited = Array(repeating: Array(repeating: false, count: 300), count: 300)
//for _ in 1...t{
//    let l = Int(String(readLine()!))!
//    let now = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let destination = readLine()!.split(separator: " ").map{Int(String($0))!}
//    bfs(now, destination, l)
//    queue = []
//    visited = Array(repeating: Array(repeating: false, count: 300), count: 300)
//}
//
//func bfs(_ now: [Int], _ destination: [Int], _ l: Int){
//    queue.append((now[0], now[1], 0))
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        if (pop.0, pop.1) == (destination[0], destination[1]){
//            print(pop.2)
//            break
//        }
//        if pop.1 + 2 < l{
//            if pop.0 + 1 < l && !visited[pop.0 + 1][pop.1 + 2]{
//                visited[pop.0 + 1][pop.1 + 2] = true
//                queue.append((pop.0 + 1, pop.1 + 2, pop.2 + 1))
//            }
//
//            if pop.0 - 1 >= 0 && !visited[pop.0 - 1][pop.1 + 2]{
//                visited[pop.0 - 1][pop.1 + 2] = true
//                queue.append((pop.0 - 1, pop.1 + 2, pop.2 + 1))
//            }
//        }
//
//        if pop.1 - 2 >= 0{
//            if pop.0 + 1 < l && !visited[pop.0 + 1][pop.1 - 2]{
//                visited[pop.0 + 1][pop.1 - 2] = true
//                queue.append((pop.0 + 1, pop.1 - 2, pop.2 + 1))
//            }
//
//            if pop.0 - 1 >= 0 && !visited[pop.0 - 1][pop.1 - 2]{
//                visited[pop.0 - 1][pop.1 - 2] = true
//                queue.append((pop.0 - 1, pop.1 - 2, pop.2 + 1))
//            }
//        }
//
//        if pop.0 + 2 < l {
//            if pop.1 + 1 < l && !visited[pop.0 + 2][pop.1 + 1]{
//                visited[pop.0 + 2][pop.1 + 1] = true
//                queue.append((pop.0 + 2, pop.1 + 1, pop.2 + 1))
//            }
//
//            if pop.1 - 1 >= 0 && !visited[pop.0 + 2][pop.1 - 1]{
//                visited[pop.0 + 2][pop.1 - 1] = true
//                queue.append((pop.0 + 2, pop.1 - 1, pop.2 + 1))
//            }
//        }
//
//        if pop.0 - 2 >= 0 {
//            if pop.1 + 1 < l && !visited[pop.0 - 2][pop.1 + 1]{
//                visited[pop.0 - 2][pop.1 + 1] = true
//                queue.append((pop.0 - 2, pop.1 + 1, pop.2 + 1))
//            }
//
//            if pop.1 - 1 >= 0 && !visited[pop.0 - 2][pop.1 - 1]{
//                visited[pop.0 - 2][pop.1 - 1] = true
//                queue.append((pop.0 - 2, pop.1 - 1, pop.2 + 1))
//            }
//        }
//    }
//}
