//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/28.
// O

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0, -1, 1, 1, -1]
//let dy = [0, 0, -1, 1, 1, -1, 1, -1]
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//var result = [Int]()
//func bfs(_ startX: Int, _ startY: Int){
//    var visited = Array(repeating: Array(repeating: false, count: 251), count: 251)
//    var queue = [((Int, Int), Int)]() //x, y, 안전거리
//
//    queue.append(((startX, startY), 0))
//    visited[startX][startY] = true
//    var idx = 0
//    while queue.count > idx {
//        let pop = queue[idx]
//        let x = pop.0.0
//        let y = pop.0.1
//        let safeDistance = pop.1
//        idx += 1
//        if arr[x][y] == 1 {
//            result.append(safeDistance)
//            break
//        }
//        for i in 0..<8{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] {continue}
//            queue.append(((nx, ny), safeDistance + 1))
//            visited[nx][ny] = true
//        }
//
//
//    }
//}
//for i in 0..<n {
//    for j in 0..<m{
//        if arr[i][j] == 1 {continue}
//        bfs(i, j)
//    }
//}
//print(result.max()!)
