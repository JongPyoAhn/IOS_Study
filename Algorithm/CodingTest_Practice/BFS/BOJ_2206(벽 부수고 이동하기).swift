////
////  main.swift
////  CodingTest_Practice
////
////  Created by 안종표 on 2021/12/31.
////
////
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: 1001), count: 1001)
//var queue = [((Int, Int, Int), Int)]()//((x,y,depth), 벽부순여부)
//var result = -1
//var index = 0
//
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//func bfs(){
//    queue.append(((0,0, 1), 1))
//    visited[0][0][1] = true
//
//    while queue.count > index{
//        let pop = queue[index]
//
//        if pop.0.0 == n - 1 && pop.0.1 == m - 1{
//            result = pop.0.2
//            break
//        }
//
//        for i in 0..<4{
//            let nx = pop.0.0 + dx[i]
//            let ny = pop.0.1 + dy[i]
//
//            if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny][pop.1]{
//
//                if arr[nx][ny] == 1 && pop.1 == 1{
//                    visited[nx][ny][pop.1 - 1] = true
//                    queue.append(((nx, ny, pop.0.2 + 1), pop.1 - 1))
//                }
//
//                if arr[nx][ny] == 0{
//                    visited[nx][ny][pop.1] = true
//                    queue.append(((nx, ny, pop.0.2 + 1), pop.1))
//                }
//
//            }
//
//
//
//        }
//        index += 1
//    }
//
//}
//
//bfs()
//print(result)
//
////6 4
////0000
////1110
////0110
////0000
////0111
////0000
