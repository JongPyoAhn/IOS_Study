//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/11/15.
// 개어려웟음 다시풀때 못풀확률 꽤높음.멘탈잡기

//let mn = readLine()!.split(separator: " ").map{Int(String($0))!}
//let m = mn[0]
//let n = mn[1]
//var arr:[[Int]] = [[]]
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var dist = Array(repeating: Array(repeating: Int.max, count: 101), count: 101)
//var queue: [(Int, Int)] = []
//for _ in 1...n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//arr.removeFirst()
//
//func bfs(){
//    queue.append((0, 0))
//    dist[0][0] = 0
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//
//        for i in 0...3{
//            let nx = pop.0 + dx[i]
//            let ny = pop.1 + dy[i]
//            if nx >= 0 && nx < n && ny >= 0 && ny < m{
//                if arr[nx][ny] == 1{
//                    if dist[nx][ny] > dist[pop.0][pop.1] + 1{
//                        dist[nx][ny] = dist[pop.0][pop.1] + 1
//                        queue.append((nx, ny))
//                    }
//
//
//                }else if arr[nx][ny] == 0 {
//                    if dist[nx][ny] > dist[pop.0][pop.1]{
//                        dist[nx][ny] = dist[pop.0][pop.1]
//                        queue.append((nx,ny))
//                    }
//                }
//            }
//        }
//    }
//}
//bfs()
//print(dist[n - 1][m - 1])
