//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/11/11.
//


//let n = Int(String(readLine()!))!
////화면, 클립보드, 시간
//var queue: [(Int, Int, Int)] = []
//var visited = Array(repeating: Array(repeating: false, count: 2000), count: 2000)
//
//var result = 0
//visited[1][0] = true
//func bfs(_ start: (Int, Int, Int)){
//    queue.append(start)
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        if pop.0 == n {
//            result = pop.2
//            break
//        }
//        if pop.0 >= 1 && pop.0 < 2000{
//            if !visited[pop.0][pop.0]{
//                visited[pop.0][pop.0] = true
//                queue.append((pop.0,pop.0,pop.2 + 1))
//            }
//
//            if !visited[pop.0 - 1][pop.1]{
//                visited[pop.0 - 1][pop.1] = true
//                queue.append((pop.0 - 1, pop.1, pop.2 + 1))
//            }
//        }
//
//        if pop.1 > 0 && pop.0 + pop.1 < 2000{
//            if !visited[pop.0 + pop.1][pop.1]{
//                visited[pop.0 + pop.1][pop.1] = true
//                queue.append((pop.0 + pop.1, pop.1, pop.2 + 1))
//            }
//        }
//
//
//    }
//
//
//}
//bfs((1, 0, 0))
//print(result)
