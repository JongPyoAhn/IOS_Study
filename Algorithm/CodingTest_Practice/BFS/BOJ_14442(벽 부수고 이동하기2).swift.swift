//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/10.
// BOJ_14442(벽 부수고 이동하기2).swift

//import Foundation
//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, 1, -1]
////var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 11), count: m + 1), count: n + 1)
//var visited = Array(repeating: Array(repeating: Array(repeating: 0, count: 1), count: m + 1), count: n + 1)
//var queue = [((Int, Int),Int,Int)]() //좌표, 이동한 벽개수, 부술 수 있는 벽의 개수
//var idx = 0
//var result = -1
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//func bfs(){
//    queue.append(((0,0),1,k))
//    visited[0][0][0] = k
//    while queue.count > idx{
//        let pop = queue[idx]
//        if pop.0.0 == n - 1 && pop.0.1 == m - 1{
//            result = pop.1
//            break
//        }
//        for i in 0..<4{
//            let nx = pop.0.0 + dx[i]
//            let ny = pop.0.1 + dy[i]
//            //벽의 개수가 더작은거..?
//
//
//            if nx >= 0 && nx < n && ny >= 0 && ny < m {
//                if pop.1 + 1 > visited[nx][ny][0]{
//                    if pop.2 > 0 && arr[nx][ny] == 1{
//                        queue.append(((nx,ny),pop.1 + 1,pop.2 - 1))
//                        visited[nx][ny][0] = pop.1 + 1
//                    }
//
//                    if arr[nx][ny] == 0{
//                        queue.append(((nx,ny),pop.1 + 1,pop.2))
//                        visited[nx][ny][0] = pop.1 + 1
//                    }
//                }
//            }
//        }
//        idx += 1
//    }
//}
//bfs()
//print(result)
