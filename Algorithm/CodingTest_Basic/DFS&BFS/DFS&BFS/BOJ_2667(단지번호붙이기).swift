//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/05.
//

//let n = Int(String(readLine()!))!
//var arr: [[Int]] = [[]]
//var visited = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
//let dx = [0, 0, 1, -1]
//let dy = [1, -1, 0, 0]
//var count = 0
//for _ in 1...n {
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//arr.removeFirst()
//func dfs(_ x: Int,_ y: Int){
//    count += 1
//    visited[x][y] = true
//    for i in 0...3{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        if nx >= 0 && nx < n && ny >= 0 && ny < n {
//            if arr[nx][ny] == 1 && !visited[nx][ny] {
//                dfs(nx, ny)
//            }
//        }
//        
//    }
//}
//var result: [Int] = []
//for i in 0..<n {
//    for j in 0..<n{
//        if arr[i][j] == 1 && !visited[i][j] {
//            count = 0
//            dfs(i, j)
//            result.append(count)
//        }
//    }
//}
//print(result.count)
//result.sort()
//print(result.map{String($0)}.joined(separator: "\n"))



